# Pragmas.
use strict;
use warnings;

# Modules.
use Class::Utils qw(set_params);
use English qw(-no_match_vars);
use Test::More 'tests' => 2;

# Test.
my $self = {
	'key' => undef,
};
set_params($self, 'key', 'value');
is($self->{'key'}, 'value');

# Test.
eval {
	set_params($self, 'bad_key', 'value');
};
is($EVAL_ERROR, "Unknown parameter 'bad_key'.\n");
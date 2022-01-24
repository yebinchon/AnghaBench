#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct allow_opts {int user; int group; int everyone; int create; int set; int local; int descend; int recursive; char* dataset; char* who; int /*<<< orphan*/  perms; void* prt_perms; scalar_t__ prt_usage; } ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 void* B_FALSE ; 
 void* B_TRUE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 void* FUNC2 (int,char**,scalar_t__,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

__attribute__((used)) static void
FUNC5(int argc, char **argv, boolean_t un, struct allow_opts *opts)
{
	int uge_sum = opts->user + opts->group + opts->everyone;
	int csuge_sum = opts->create + opts->set + uge_sum;
	int ldcsuge_sum = csuge_sum + opts->local + opts->descend;
	int all_sum = un ? ldcsuge_sum + opts->recursive : ldcsuge_sum;

	if (uge_sum > 1)
		FUNC0(un, B_FALSE,
		    FUNC1("-u, -g, and -e are mutually exclusive\n"));

	if (opts->prt_usage) {
		if (argc == 0 && all_sum == 0)
			FUNC0(un, B_TRUE, NULL);
		else
			FUNC4(B_FALSE);
	}

	if (opts->set) {
		if (csuge_sum > 1)
			FUNC0(un, B_FALSE,
			    FUNC1("invalid options combined with -s\n"));

		opts->dataset = FUNC2(argc, argv, un, 3, &opts->perms);
		if (argv[0][0] != '@')
			FUNC0(un, B_FALSE,
			    FUNC1("invalid set name: missing '@' prefix\n"));
		opts->who = argv[0];
	} else if (opts->create) {
		if (ldcsuge_sum > 1)
			FUNC0(un, B_FALSE,
			    FUNC1("invalid options combined with -c\n"));
		opts->dataset = FUNC2(argc, argv, un, 2, &opts->perms);
	} else if (opts->everyone) {
		if (csuge_sum > 1)
			FUNC0(un, B_FALSE,
			    FUNC1("invalid options combined with -e\n"));
		opts->dataset = FUNC2(argc, argv, un, 2, &opts->perms);
	} else if (uge_sum == 0 && argc > 0 && FUNC3(argv[0], "everyone")
	    == 0) {
		opts->everyone = B_TRUE;
		argc--;
		argv++;
		opts->dataset = FUNC2(argc, argv, un, 2, &opts->perms);
	} else if (argc == 1 && !un) {
		opts->prt_perms = B_TRUE;
		opts->dataset = argv[argc-1];
	} else {
		opts->dataset = FUNC2(argc, argv, un, 3, &opts->perms);
		opts->who = argv[0];
	}

	if (!opts->local && !opts->descend) {
		opts->local = B_TRUE;
		opts->descend = B_TRUE;
	}
}
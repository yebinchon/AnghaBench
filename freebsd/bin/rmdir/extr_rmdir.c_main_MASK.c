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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,char**,char*) ; 
 scalar_t__ optind ; 
 int pflag ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int vflag ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

int
FUNC7(int argc, char *argv[])
{
	int ch, errors;

	while ((ch = FUNC1(argc, argv, "pv")) != -1)
		switch(ch) {
		case 'p':
			pflag = 1;
			break;
		case 'v':
			vflag = 1;
			break;
		case '?':
		default:
			FUNC5();
		}
	argc -= optind;
	argv += optind;

	if (argc == 0)
		FUNC5();

	for (errors = 0; *argv; argv++) {
		if (FUNC4(*argv) < 0) {
			FUNC6("%s", *argv);
			errors = 1;
		} else {
			if (vflag)
				FUNC2("%s\n", *argv);
			if (pflag)
				errors |= FUNC3(*argv);
		}
	}

	FUNC0(errors);
}
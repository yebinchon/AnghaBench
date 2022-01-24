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
 scalar_t__ Nflag ; 
 int FUNC0 (int,char**,char*) ; 
 scalar_t__ hflag ; 
 int FUNC1 () ; 
 int FUNC2 (char*) ; 
 int FUNC3 (char*,char*) ; 
 int FUNC4 (char*) ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  qflag ; 
 char* FUNC5 (char*,char) ; 
 scalar_t__ uflag ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ vflag ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,...) ; 

int
FUNC9(int argc, char **argv)
{
	char *env, *eq, *val;
	int ch, error;

	val = NULL;
	env = NULL;
	while ((ch = FUNC0(argc, argv, "hNquv")) != -1) {
		switch (ch) {
		case 'h':
			hflag++;
			break;
		case 'N':
			Nflag++;
			break;
		case 'q':
			qflag++;
			break;
		case 'u':
			uflag++;
			break;
		case 'v':
			vflag++;
			break;
		default:
			FUNC6();
		}
	}
	argc -= optind;
	argv += optind;
	if (argc > 0) {
		env = argv[0];
		eq = FUNC5(env, '=');
		if (eq != NULL) {
			*eq++ = '\0';
			val = eq;
		}
		argv++;
		argc--;
	}
	if ((hflag || Nflag) && env != NULL)
		FUNC6();
	if (argc > 0 || ((uflag || vflag) && env == NULL))
		FUNC6();
	if (env == NULL) {
		error = FUNC1();
		if (error && !qflag)
			FUNC7("kdumpenv");
	} else if (val == NULL) {
		if (uflag) {
			error = FUNC4(env);
			if (error && !qflag)
				FUNC8("unable to unset %s", env);
		} else {
			error = FUNC2(env);
			if (error && !qflag)
				FUNC8("unable to get %s", env);
		}
	} else {
		error = FUNC3(env, val);
		if (error && !qflag)
			FUNC8("unable to set %s to %s", env, val);
	}
	return (error);
}
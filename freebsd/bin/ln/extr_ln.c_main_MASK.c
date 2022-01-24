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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOTDIR ; 
 int Fflag ; 
 int Pflag ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int fflag ; 
 int FUNC4 (int,char**,char*) ; 
 int hflag ; 
 scalar_t__ iflag ; 
 char linkch ; 
 int FUNC5 (char*,char*,int) ; 
 scalar_t__ FUNC6 (char*,struct stat*) ; 
 scalar_t__ optind ; 
 scalar_t__ sflag ; 
 scalar_t__ FUNC7 (char*,struct stat*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 char* FUNC9 (char*,char) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int vflag ; 
 int wflag ; 

int
FUNC11(int argc, char *argv[])
{
	struct stat sb;
	char *p, *targetdir;
	int ch, exitval;

	/*
	 * Test for the special case where the utility is called as
	 * "link", for which the functionality provided is greatly
	 * simplified.
	 */
	if ((p = FUNC9(argv[0], '/')) == NULL)
		p = argv[0];
	else
		++p;
	if (FUNC8(p, "link") == 0) {
		while (FUNC4(argc, argv, "") != -1)
			FUNC10();
		argc -= optind;
		argv += optind;
		if (argc != 2)
			FUNC10();
		FUNC3(FUNC5(argv[0], argv[1], 0));
	}

	while ((ch = FUNC4(argc, argv, "FLPfhinsvw")) != -1)
		switch (ch) {
		case 'F':
			Fflag = 1;
			break;
		case 'L':
			Pflag = 0;
			break;
		case 'P':
			Pflag = 1;
			break;
		case 'f':
			fflag = 1;
			iflag = 0;
			wflag = 0;
			break;
		case 'h':
		case 'n':
			hflag = 1;
			break;
		case 'i':
			iflag = 1;
			fflag = 0;
			break;
		case 's':
			sflag = 1;
			break;
		case 'v':
			vflag = 1;
			break;
		case 'w':
			wflag = 1;
			break;
		case '?':
		default:
			FUNC10();
		}

	argv += optind;
	argc -= optind;

	linkch = sflag ? '-' : '=';
	if (sflag == 0)
		Fflag = 0;
	if (Fflag == 1 && iflag == 0) {
		fflag = 1;
		wflag = 0;		/* Implied when fflag != 0 */
	}

	switch(argc) {
	case 0:
		FUNC10();
		/* NOTREACHED */
	case 1:				/* ln source */
		FUNC3(FUNC5(argv[0], ".", 1));
	case 2:				/* ln source target */
		FUNC3(FUNC5(argv[0], argv[1], 0));
	default:
		;
	}
					/* ln source1 source2 directory */
	targetdir = argv[argc - 1];
	if (hflag && FUNC6(targetdir, &sb) == 0 && FUNC1(sb.st_mode)) {
		/*
		 * We were asked not to follow symlinks, but found one at
		 * the target--simulate "not a directory" error
		 */
		errno = ENOTDIR;
		FUNC2(1, "%s", targetdir);
	}
	if (FUNC7(targetdir, &sb))
		FUNC2(1, "%s", targetdir);
	if (!FUNC0(sb.st_mode))
		FUNC10();
	for (exitval = 0; *argv != targetdir; ++argv)
		exitval |= FUNC5(*argv, targetdir, 1);
	FUNC3(exitval);
}
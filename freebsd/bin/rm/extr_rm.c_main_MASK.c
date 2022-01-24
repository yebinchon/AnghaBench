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
 int Iflag ; 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  SIGINFO ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int Wflag ; 
 scalar_t__ FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 int dflag ; 
 int eval ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int fflag ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int,char**,char*) ; 
 int iflag ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ optind ; 
 int rflag ; 
 int /*<<< orphan*/  FUNC7 (char**) ; 
 int /*<<< orphan*/  FUNC8 (char**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  siginfo ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdin_ok ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 char* FUNC12 (char*,char) ; 
 int /*<<< orphan*/  uid ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int vflag ; 
 int xflag ; 

int
FUNC14(int argc, char *argv[])
{
	int ch;
	char *p;

	(void)FUNC9(LC_ALL, "");

	/*
	 * Test for the special case where the utility is called as
	 * "unlink", for which the functionality provided is greatly
	 * simplified.
	 */
	if ((p = FUNC12(argv[0], '/')) == NULL)
		p = argv[0];
	else
		++p;
	if (FUNC11(p, "unlink") == 0) {
		if (argc == 2)
			FUNC7(&argv[1]);
		else if (argc == 3 && FUNC11(argv[1], "--") == 0)
			FUNC7(&argv[2]);
		else
			FUNC13();
		FUNC3(eval);
	}

	rflag = xflag = 0;
	while ((ch = FUNC5(argc, argv, "dfiIPRrvWx")) != -1)
		switch(ch) {
		case 'd':
			dflag = 1;
			break;
		case 'f':
			fflag = 1;
			iflag = 0;
			break;
		case 'i':
			fflag = 0;
			iflag = 1;
			break;
		case 'I':
			Iflag = 1;
			break;
		case 'P':
			/* Compatibility no-op. */
			break;
		case 'R':
		case 'r':			/* Compatibility. */
			rflag = 1;
			break;
		case 'v':
			vflag = 1;
			break;
		case 'W':
			Wflag = 1;
			break;
		case 'x':
			xflag = 1;
			break;
		default:
			FUNC13();
		}
	argc -= optind;
	argv += optind;

	if (argc < 1) {
		if (fflag)
			return (0);
		FUNC13();
	}

	FUNC1(argv);
	FUNC2(argv);
	uid = FUNC4();

	(void)FUNC10(SIGINFO, siginfo);
	if (*argv) {
		stdin_ok = FUNC6(STDIN_FILENO);

		if (Iflag) {
			if (FUNC0(argv) == 0)
				FUNC3 (1);
		}
		if (rflag)
			FUNC8(argv);
		else
			FUNC7(argv);
	}

	FUNC3 (eval);
}
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
 int KEY_ESC ; 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  LOCALEDIR ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  PACKAGE ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  filename ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  rootmenu ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*) ; 
 int single_menu_mode ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdscr ; 
 int /*<<< orphan*/  FUNC20 (char*,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 

int FUNC22(int ac, char **av)
{
	int saved_x, saved_y;
	char *mode;
	int res;

	FUNC19(LC_ALL, "");
	FUNC2(PACKAGE, LOCALEDIR);
	FUNC21(PACKAGE);

	FUNC6(av[1]);
	FUNC7(NULL);

	mode = FUNC13("MENUCONFIG_MODE");
	if (mode) {
		if (!FUNC20(mode, "single_menu"))
			single_menu_mode = 1;
	}

	FUNC16();

	FUNC14(stdscr, saved_y, saved_x);
	if (FUNC15(NULL)) {
		FUNC12(stderr, "%s", FUNC0("Your display is too small to run Menuconfig!\n"));
		FUNC12(stderr, "%s", FUNC0("It must be at least 19 lines by 80 columns.\n"));
		return 1;
	}

	FUNC18(FUNC5());
	do {
		FUNC3(&rootmenu);
		FUNC9();
		if (FUNC4())
			res = FUNC10(NULL,
					   FUNC1("Do you wish to save your "
					     "new kernel configuration?\n"
					     "<ESC><ESC> to continue."),
					   6, 60);
		else
			res = -1;
	} while (res == KEY_ESC);
	FUNC11(saved_x, saved_y);

	switch (res) {
	case 0:
		if (FUNC8(filename)) {
			FUNC12(stderr, "%s", FUNC1("\n\n"
				"Error during writing of the kernel configuration.\n"
				"Your kernel configuration changes were NOT saved."
				"\n\n"));
			return 1;
		}
	case -1:
		FUNC17(FUNC1("\n\n"
			"*** End of Linux kernel configuration.\n"
			"*** Execute 'make' to build the kernel or try 'make help'."
			"\n\n"));
		break;
	default:
		FUNC12(stderr, "%s", FUNC1("\n\n"
			"Your kernel configuration changes were NOT saved."
			"\n\n"));
	}

	return 0;
}
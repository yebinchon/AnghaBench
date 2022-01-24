#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char const* backtitle; } ;

/* Variables and functions */
 int ERRDISPLAYTOOSMALL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ dlg ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  stdscr ; 

int FUNC9(const char *backtitle)
{
	int height, width;

	FUNC6();		/* Init curses */
	FUNC5(stdscr, height, width);
	if (height < 19 || width < 80) {
		FUNC3();
		return -ERRDISPLAYTOOSMALL;
	}

	dlg.backtitle = backtitle;
	FUNC1(FUNC4("MENUCONFIG_COLOR"));

	FUNC7(stdscr, TRUE);
	FUNC0();
	FUNC8();
	FUNC2();

	return 0;
}
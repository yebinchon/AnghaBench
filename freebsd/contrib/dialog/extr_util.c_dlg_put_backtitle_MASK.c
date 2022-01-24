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
typedef  int /*<<< orphan*/  chtype ;
struct TYPE_2__ {int /*<<< orphan*/ * backtitle; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACS_HLINE ; 
 int /*<<< orphan*/  A_NORMAL ; 
 int COLS ; 
 TYPE_1__ dialog_vars ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  screen_attr ; 
 int /*<<< orphan*/  stdscr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(void)
{
    int i;

    if (dialog_vars.backtitle != NULL) {
	chtype attr = A_NORMAL;
	int backwidth = FUNC2(dialog_vars.backtitle);

	FUNC0(stdscr, screen_attr);
	(void) FUNC5(stdscr, 0, 1);
	FUNC3(stdscr, dialog_vars.backtitle, COLS - 2, &attr);
	for (i = 0; i < COLS - backwidth; i++)
	    (void) FUNC4(stdscr, ' ');
	(void) FUNC5(stdscr, 1, 1);
	for (i = 0; i < COLS - 2; i++)
	    (void) FUNC4(stdscr, FUNC1(ACS_HLINE));
    }

    (void) FUNC6(stdscr);
}
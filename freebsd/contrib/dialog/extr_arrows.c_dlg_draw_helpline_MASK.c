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
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_2__ {scalar_t__* help_line; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_NORMAL ; 
 int ON_LEFT ; 
 int ON_RIGHT ; 
 TYPE_1__ dialog_vars ; 
 int FUNC0 (scalar_t__*) ; 
 int FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__*,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int) ; 

void
FUNC8(WINDOW *win, bool decorations)
{
    int cur_x, cur_y;
    int bottom;

    if (dialog_vars.help_line != 0
	&& dialog_vars.help_line[0] != 0
	&& (bottom = FUNC4(win) - 1) > 0) {
	chtype attr = A_NORMAL;
	int cols = FUNC0(dialog_vars.help_line);
	int other = decorations ? (ON_LEFT + ON_RIGHT) : 0;
	int avail = (FUNC3(win) - other - 2);
	int limit = FUNC1(dialog_vars.help_line) + 2;

	if (limit < avail) {
	    FUNC5(win, cur_y, cur_x);
	    other = decorations ? ON_LEFT : 0;
	    (void) FUNC7(win, bottom, other + (avail - limit) / 2);
	    FUNC6(win, '[');
	    FUNC2(win, dialog_vars.help_line, cols, &attr);
	    FUNC6(win, ']');
	    FUNC7(win, cur_y, cur_x);
	}
    }
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_8__ {scalar_t__ getc_callbacks; TYPE_1__* all_windows; } ;
struct TYPE_7__ {scalar_t__ keep_window; } ;
struct TYPE_6__ {scalar_t__ shadow; int /*<<< orphan*/ * normal; struct TYPE_6__* next; } ;
typedef  TYPE_1__ DIALOG_WINDOWS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_5__ dialog_state ; 
 TYPE_4__ dialog_vars ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/ * stdscr ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(WINDOW *win)
{
    DIALOG_WINDOWS *p, *q, *r;

    /*
     * If --keep-window was set, do not delete/repaint the windows.
     */
    if (dialog_vars.keep_window)
	return;

    /* Leave the main window untouched if there are no background windows.
     * We do this so the current window will not be cleared on exit, allowing
     * things like the infobox demo to run without flicker.
     */
    if (dialog_state.getc_callbacks != 0) {
	FUNC6(stdscr);
	FUNC7(stdscr);
    }

    for (p = dialog_state.all_windows, q = r = 0; p != 0; r = p, p = p->next) {
	if (p->normal == win) {
	    q = p;		/* found a match - should be only one */
	    if (r == 0) {
		dialog_state.all_windows = p->next;
	    } else {
		r->next = p->next;
	    }
	} else {
	    if (p->shadow != 0) {
		FUNC6(p->shadow);
		FUNC7(p->shadow);
	    }
	    FUNC6(p->normal);
	    FUNC7(p->normal);
	}
    }

    if (q) {
	if (dialog_state.all_windows != 0)
	    FUNC4(q);
	FUNC0(q->normal);
	FUNC2(q->normal);
	FUNC1(q->normal);
	FUNC5(q);
    }
    FUNC3();
}
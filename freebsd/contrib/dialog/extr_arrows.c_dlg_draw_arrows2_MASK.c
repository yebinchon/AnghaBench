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
struct TYPE_2__ {scalar_t__ title; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACS_DARROW ; 
 int /*<<< orphan*/  ACS_HLINE ; 
 int /*<<< orphan*/  ACS_UARROW ; 
 int FALSE ; 
 int /*<<< orphan*/  KEY_NPAGE ; 
 int /*<<< orphan*/  KEY_PPAGE ; 
 int MARGIN ; 
 int /*<<< orphan*/  ON_LEFT ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  darrow_attr ; 
 TYPE_1__ dialog_vars ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ stdscr ; 
 int /*<<< orphan*/  uarrow_attr ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

void
FUNC15(WINDOW *win,
		 int top_arrow,
		 int bottom_arrow,
		 int x,
		 int top,
		 int bottom,
		 chtype attr,
		 chtype borderattr)
{
    chtype save = FUNC4(win);
    int cur_x, cur_y;
    int limit_x = FUNC6(win);
    bool draw_top = TRUE;
    bool is_toplevel = (FUNC11(win) == stdscr);

    FUNC7(win, cur_y, cur_x);

    /*
     * If we're drawing a centered title, do not overwrite with the arrows.
     */
    if (dialog_vars.title && is_toplevel && (top - FUNC5(win)) < MARGIN) {
	int have = (limit_x - FUNC3(dialog_vars.title)) / 2;
	int need = x + 5;
	if (need > have)
	    draw_top = FALSE;
    }

    if (draw_top) {
	(void) FUNC13(win, top, x);
	if (top_arrow) {
	    FUNC1(win, FUNC8(uarrow_attr, attr));
	    (void) FUNC0(win, ACS_UARROW);
	    (void) FUNC10(win, "(-)");
	} else {
	    FUNC1(win, attr);
	    (void) FUNC12(win, FUNC2(ACS_HLINE), ON_LEFT);
	}
    }
    FUNC9(top, x - 1, 6, KEY_PPAGE);

    (void) FUNC13(win, bottom, x);
    if (bottom_arrow) {
	FUNC1(win, FUNC8(darrow_attr, borderattr));
	(void) FUNC0(win, ACS_DARROW);
	(void) FUNC10(win, "(+)");
    } else {
	FUNC1(win, borderattr);
	(void) FUNC12(win, FUNC2(ACS_HLINE), ON_LEFT);
    }
    FUNC9(bottom, x - 1, 6, KEY_NPAGE);

    (void) FUNC13(win, cur_y, cur_x);
    FUNC14(win);

    FUNC1(win, save);
}
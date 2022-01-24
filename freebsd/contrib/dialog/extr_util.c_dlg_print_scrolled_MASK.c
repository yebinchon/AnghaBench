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
typedef  int /*<<< orphan*/  WINDOW ;

/* Variables and functions */
 int /*<<< orphan*/  ACS_HLINE ; 
 int /*<<< orphan*/  FALSE ; 
 int LINES ; 
 int MARGIN ; 
 char border_attr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char dialog_attr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC7 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char position_indicator_attr ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 scalar_t__ FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int) ; 

int
FUNC15(WINDOW *win,
		   const char *prompt,
		   int offset,
		   int height,
		   int width,
		   int pauseopt)
{
    int oldy, oldx;
    int last = 0;

    (void) pauseopt;		/* used only for ncurses */

    FUNC6(win, oldy, oldx);
#ifdef NCURSES_VERSION
    if (pauseopt) {
	int wide = width - (2 * MARGIN);
	int high = LINES;
	int y, x;
	int len;
	int percent;
	WINDOW *dummy;
	char buffer[5];

#if defined(NCURSES_VERSION_PATCH) && NCURSES_VERSION_PATCH >= 20040417
	/*
	 * If we're not limited by the screensize, allow text to possibly be
	 * one character per line.
	 */
	if ((len = dlg_count_columns(prompt)) > high)
	    high = len;
#endif
	dummy = newwin(high, width, 0, 0);
	if (dummy == 0) {
	    dlg_attrset(win, dialog_attr);
	    dlg_print_autowrap(win, prompt, height + 1 + (3 * MARGIN), width);
	    last = 0;
	} else {
	    wbkgdset(dummy, dialog_attr | ' ');
	    dlg_attrset(dummy, dialog_attr);
	    werase(dummy);
	    dlg_print_autowrap(dummy, prompt, high, width);
	    getyx(dummy, y, x);
	    (void) x;

	    copywin(dummy,	/* srcwin */
		    win,	/* dstwin */
		    offset + MARGIN,	/* sminrow */
		    MARGIN,	/* smincol */
		    MARGIN,	/* dminrow */
		    MARGIN,	/* dmincol */
		    height,	/* dmaxrow */
		    wide,	/* dmaxcol */
		    FALSE);

	    delwin(dummy);

	    /* if the text is incomplete, or we have scrolled, show the percentage */
	    if (y > 0 && wide > 4) {
		percent = (int) ((height + offset) * 100.0 / y);
		if (percent < 0)
		    percent = 0;
		if (percent > 100)
		    percent = 100;
		if (offset != 0 || percent != 100) {
		    dlg_attrset(win, position_indicator_attr);
		    (void) wmove(win, MARGIN + height, wide - 4);
		    (void) sprintf(buffer, "%d%%", percent);
		    (void) waddstr(win, buffer);
		    if ((len = (int) strlen(buffer)) < 4) {
			dlg_attrset(win, border_attr);
			whline(win, dlg_boxchar(ACS_HLINE), 4 - len);
		    }
		}
	    }
	    last = (y - height);
	}
    } else
#endif
    {
	(void) offset;
	FUNC2(win, dialog_attr);
	FUNC5(win, prompt, height + 1 + (3 * MARGIN), width);
	last = 0;
    }
    FUNC14(win, oldy, oldx);
    return last;
}
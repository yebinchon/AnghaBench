#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int chtype ;
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_4__ {int /*<<< orphan*/  output; scalar_t__ text_only; } ;
struct TYPE_3__ {scalar_t__ colors; } ;

/* Variables and functions */
 int A_ATTRIBUTES ; 
 int A_BOLD ; 
 int A_COLOR ; 
 int A_NORMAL ; 
 int A_REVERSE ; 
 int A_UNDERLINE ; 
 short COLOR_BLACK ; 
 short COLOR_WHITE ; 
 int FUNC0 (char const) ; 
 scalar_t__ ERR ; 
 int FALSE ; 
 scalar_t__ FUNC1 (int) ; 
 int TAB ; 
 int TRUE ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__ dialog_state ; 
 TYPE_1__ dialog_vars ; 
 int FUNC3 (short,short) ; 
 int /*<<< orphan*/  FUNC4 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int*) ; 
 scalar_t__ FUNC8 (short,short*,short*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 

void
FUNC10(WINDOW *win, const char *txt, int cols, chtype *attr)
{
    int y_origin, x_origin;
    int y_before, x_before = 0;
    int y_after, x_after;
    int tabbed = 0;
    bool thisTab;
    bool ended = FALSE;
    chtype useattr;
#ifdef USE_WIDE_CURSES
    int combined = 0;
#endif

    if (dialog_state.text_only) {
	y_origin = y_after = 0;
	x_origin = x_after = 0;
    } else {
	FUNC5(win, y_origin, x_origin);
    }
    while (cols > 0 && (*txt != '\0')) {
	if (dialog_vars.colors) {
	    while (FUNC6(txt)) {
		int code;

		txt += 2;
		switch (code = FUNC0(*txt)) {
#ifdef HAVE_COLOR
		case '0':
		case '1':
		case '2':
		case '3':
		case '4':
		case '5':
		case '6':
		case '7':
		    *attr &= ~A_COLOR;
		    *attr |= define_color(win, code - '0');
		    break;
#endif
		case 'B':
		    *attr &= ~A_BOLD;
		    break;
		case 'b':
		    *attr |= A_BOLD;
		    break;
		case 'R':
		    *attr &= ~A_REVERSE;
		    break;
		case 'r':
		    *attr |= A_REVERSE;
		    break;
		case 'U':
		    *attr &= ~A_UNDERLINE;
		    break;
		case 'u':
		    *attr |= A_UNDERLINE;
		    break;
		case 'n':
		    *attr = A_NORMAL;
		    break;
		}
		++txt;
	    }
	}
	if (ended || *txt == '\n' || *txt == '\0')
	    break;
	useattr = (*attr) & A_ATTRIBUTES;
#ifdef HAVE_COLOR
	/*
	 * Prevent this from making text invisible when the foreground and
	 * background colors happen to be the same, and there's no bold
	 * attribute.
	 */
	if ((useattr & A_COLOR) != 0 && (useattr & A_BOLD) == 0) {
	    short pair = (short) PAIR_NUMBER(useattr);
	    short fg, bg;
	    if (pair_content(pair, &fg, &bg) != ERR
		&& fg == bg) {
		useattr &= ~A_COLOR;
		useattr |= dlg_color_pair(fg, ((bg == COLOR_BLACK)
					       ? COLOR_WHITE
					       : COLOR_BLACK));
	    }
	}
#endif
	/*
	 * Write the character, using curses to tell exactly how wide it
	 * is.  If it is a tab, discount that, since the caller thinks
	 * tabs are nonprinting, and curses will expand tabs to one or
	 * more blanks.
	 */
	thisTab = (FUNC0(*txt) == TAB);
	if (dialog_state.text_only) {
	    y_before = y_after;
	    x_before = x_after;
	} else {
	    if (thisTab) {
		FUNC5(win, y_before, x_before);
		(void) y_before;
	    }
	}
	if (dialog_state.text_only) {
	    int ch = FUNC0(*txt++);
	    if (thisTab) {
		while ((x_after++) % 8) {
		    FUNC4(' ', dialog_state.output);
		}
	    } else {
		FUNC4(ch, dialog_state.output);
		x_after++;	/* FIXME: handle meta per locale */
	    }
	} else {
	    (void) FUNC9(win, FUNC0(*txt++) | useattr);
	    FUNC5(win, y_after, x_after);
	}
	if (thisTab && (y_after == y_origin))
	    tabbed += (x_after - x_before);
	if ((y_after != y_origin) ||
	    (x_after >= (cols + tabbed + x_origin)
#ifdef USE_WIDE_CURSES
	     && !is_combining(txt, &combined)
#endif
	    )) {
	    ended = TRUE;
	}
    }
    if (dialog_state.text_only) {
	FUNC4('\n', dialog_state.output);
    }
}
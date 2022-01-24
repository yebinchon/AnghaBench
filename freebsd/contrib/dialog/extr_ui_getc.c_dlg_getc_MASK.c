#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_9__ ;
typedef  struct TYPE_11__   TYPE_8__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_12__ {TYPE_1__* getc_redirect; int /*<<< orphan*/  getc_callbacks; int /*<<< orphan*/  screen_output; } ;
struct TYPE_11__ {int timeout_secs; int /*<<< orphan*/  help_file; } ;
struct TYPE_10__ {int /*<<< orphan*/  keep_win; int /*<<< orphan*/ * win; int /*<<< orphan*/  (* handle_getc ) (TYPE_1__*,int,int,int*) ;} ;
typedef  TYPE_1__ DIALOG_CALLBACK ;

/* Variables and functions */
#define  CHR_LITERAL 136 
#define  CHR_REPAINT 135 
#define  CHR_TRACE 134 
#define  DLGK_FIELD_NEXT 133 
#define  DLGK_FIELD_PREV 132 
#define  DLGK_HELPFILE 131 
 int const FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
#define  ERR 130 
 int ESC ; 
 int FALSE ; 
#define  KEY_BTAB 129 
#define  TAB 128 
 int TRUE ; 
 int WTIMEOUT_VAL ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  curscr ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_9__ dialog_state ; 
 TYPE_8__ dialog_vars ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int const) ; 
 int /*<<< orphan*/  FUNC13 (int const) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC15 () ; 
 TYPE_1__* FUNC16 (TYPE_1__*) ; 
 TYPE_1__* FUNC17 (TYPE_1__*) ; 
 int FUNC18 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,int,int,int*) ; 
 scalar_t__ FUNC20 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int) ; 

int
FUNC26(WINDOW *win, int *fkey)
{
    WINDOW *save_win = win;
    int ch = ERR;
    int before_chr;
    int before_fkey;
    int result;
    bool done = FALSE;
    bool literal = FALSE;
    DIALOG_CALLBACK *p = 0;
    int interval = (dialog_vars.timeout_secs * 1000);
    time_t expired = FUNC20((time_t *) 0) + dialog_vars.timeout_secs;
    time_t current;

    if (FUNC15())
	FUNC25(win, WTIMEOUT_VAL);
    else if (interval > 0)
	FUNC25(win, interval);

    while (!done) {
	bool handle_others = FALSE;

	/*
	 * If there was no pending file-input, check the keyboard.
	 */
	ch = FUNC18(win, fkey);
	if (literal) {
	    done = TRUE;
	    continue;
	}

	before_chr = ch;
	before_fkey = *fkey;

	ch = FUNC5(win, ch, fkey);
	FUNC8(ch, *fkey);

	current = FUNC20((time_t *) 0);

	/*
	 * If we acquired a fkey value, then it is one of dialog's builtin
	 * codes such as DLGK_HELPFILE.
	 */
	if (!*fkey || *fkey != before_fkey) {
	    switch (ch) {
	    case CHR_LITERAL:
		literal = TRUE;
		FUNC14(win, FALSE);
		continue;
	    case CHR_REPAINT:
		(void) FUNC21(win);
		(void) FUNC24(curscr);
		break;
	    case ERR:		/* wtimeout() in effect; check for file I/O */
		if (interval > 0
		    && current >= expired) {
		    FUNC1(("# dlg_getc: timeout expired\n"));
		    ch = ESC;
		    done = TRUE;
		} else if (!FUNC22(stdin)
			   || !FUNC22(dialog_state.screen_output)) {
		    FUNC1(("# dlg_getc: input or output is invalid\n"));
		    ch = ESC;
		    done = TRUE;
		} else if (FUNC2()) {
		    if (FUNC11(win))
			FUNC6(win);
		    else
			done = TRUE;
		} else {
		    done = (interval <= 0);
		}
		break;
	    case DLGK_HELPFILE:
		if (dialog_vars.help_file) {
		    int yold, xold;
		    FUNC10(win, yold, xold);
		    FUNC4("HELP", dialog_vars.help_file, 0, 0);
		    FUNC6(win);
		    FUNC23(win, yold, xold);
		}
		continue;
	    case DLGK_FIELD_PREV:
		/* FALLTHRU */
	    case KEY_BTAB:
		/* FALLTHRU */
	    case DLGK_FIELD_NEXT:
		/* FALLTHRU */
	    case TAB:
		/* Handle tab/backtab as a special case for traversing between
		 * the nominal "current" window, and other windows having
		 * callbacks.  If the nominal (control) window closes, we'll
		 * close the windows with callbacks.
		 */
		if (dialog_state.getc_callbacks != 0 &&
		    (FUNC12(TAB) ||
		     FUNC13(KEY_BTAB))) {
		    p = (FUNC12(TAB)
			 ? FUNC16(p)
			 : FUNC17(p));
		    if ((dialog_state.getc_redirect = p) != 0) {
			win = p->win;
		    } else {
			win = save_win;
		    }
		    FUNC6(win);
		    break;
		}
		/* FALLTHRU */
	    default:
#ifdef NO_LEAKS
		if (isBeforeChr(DLG_CTRL('P'))) {
		    /* for testing, ^P closes the connection */
		    close(0);
		    close(1);
		    close(2);
		    break;
		}
#endif
		handle_others = TRUE;
		break;
#ifdef HAVE_DLG_TRACE
	    case CHR_TRACE:
		dlg_trace_win(win);
		break;
#endif
	    }
	} else {
	    handle_others = TRUE;
	}

	if (handle_others) {
	    if ((p = dialog_state.getc_redirect) != 0) {
		if (!(p->handle_getc(p, ch, *fkey, &result))) {
		    done = (p->win == save_win) && (!p->keep_win);
		    FUNC7(p);
		    dialog_state.getc_redirect = 0;
		    win = save_win;
		}
	    } else {
		done = TRUE;
	    }
	}
    }
    if (literal)
	FUNC14(win, TRUE);
    return ch;
}
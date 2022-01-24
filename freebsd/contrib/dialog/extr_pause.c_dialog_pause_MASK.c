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
typedef  int chtype ;
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_2__ {int timeout_secs; } ;
typedef  int /*<<< orphan*/  DLG_KEYS_BINDING ;

/* Variables and functions */
 int A_REVERSE ; 
 int BTN_HIGH ; 
#define  DLGK_ENTER 136 
#define  DLGK_FIELD_NEXT 135 
#define  DLGK_FIELD_PREV 134 
 int DLG_EXIT_OK ; 
 int DLG_EXIT_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
#define  END_KEYS_BINDING 133 
#define  ENTERKEY_BINDINGS 132 
#define  ERR 131 
 int FALSE ; 
#define  HELPKEY_BINDINGS 130 
#define  KEY_RESIZE 129 
 int MARGIN ; 
 scalar_t__ MIN_HIGH ; 
 int /*<<< orphan*/  MIN_WIDE ; 
 scalar_t__ MY_TIMEOUT ; 
 int /*<<< orphan*/  M_EVENT ; 
#define  TRAVERSE_BINDINGS 128 
 int TRUE ; 
 int /*<<< orphan*/  border2_attr ; 
 int /*<<< orphan*/  border_attr ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int dialog_attr ; 
 TYPE_1__ dialog_vars ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*,int*,int*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 scalar_t__ FUNC9 (char const**) ; 
 int /*<<< orphan*/  FUNC10 (char const**,int*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 
 int FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char const**,int,int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int,int) ; 
 int FUNC23 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC24 (int,int,int,int) ; 
 int FUNC25 (char const**,int) ; 
 int FUNC26 (int /*<<< orphan*/ ) ; 
 char** FUNC27 () ; 
 int FUNC28 (char const**,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC30 (int,int) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,char*,char const**) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC33 (int,int,int*) ; 
 char* FUNC34 (char const*) ; 
 int /*<<< orphan*/  FUNC35 (char*) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC38 (char*) ; 
 int /*<<< orphan*/  FUNC39 (int) ; 
 int /*<<< orphan*/  FUNC40 (int,int,int,char) ; 
 int /*<<< orphan*/  FUNC41 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC43 () ; 
 int title_attr ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ *) ; 
 int FUNC46 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC47 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC48 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC49 (int /*<<< orphan*/ *) ; 

int
FUNC50(const char *title,
	     const char *cprompt,
	     int height,
	     int width,
	     int seconds)
{
    /* *INDENT-OFF* */
    static DLG_KEYS_BINDING binding[] = {
	HELPKEY_BINDINGS,
	ENTERKEY_BINDINGS,
	TRAVERSE_BINDINGS,
	END_KEYS_BINDING
    };
    /* *INDENT-ON* */

#ifdef KEY_RESIZE
    int old_height = height;
    int old_width = width;
#endif

    int i, x, y, step;
    int button = FUNC13();
    int seconds_orig;
    WINDOW *dialog;
    const char **buttons = FUNC27();
    bool have_buttons = (FUNC9(buttons) != 0);
    bool first;
    int key = 0, fkey;
    int result = DLG_EXIT_UNKNOWN;
    int button_high = (have_buttons ? BTN_HIGH : MARGIN);
    int gauge_y;
    char *prompt;
    int save_timeout = dialog_vars.timeout_secs;

    FUNC0(("# pause args:\n"));
    FUNC2("title", title);
    FUNC2("message", cprompt);
    FUNC1("height", height);
    FUNC1("width", width);
    FUNC1("seconds", seconds);

    FUNC3(0);

    dialog_vars.timeout_secs = 0;
    seconds_orig = (seconds > 0) ? seconds : 1;

#ifdef KEY_RESIZE
  retry:
#endif

    prompt = FUNC34(cprompt);
    FUNC35(prompt);

    if (have_buttons) {
	FUNC6(title, prompt, &height, &width,
		      MIN_HIGH,
		      MIN_WIDE);
	FUNC10(buttons, &width);
    } else {
	FUNC6(title, prompt, &height, &width,
		      MIN_HIGH + MARGIN - BTN_HIGH,
		      MIN_WIDE);
    }
    gauge_y = height - button_high - (1 + 2 * MARGIN);
    FUNC30(height, width);
    FUNC12(height, width);

    /* center dialog box on screen */
    x = FUNC7(width);
    y = FUNC8(height);

    dialog = FUNC24(height, width, y, x);
    FUNC32(dialog, "pause", binding);
    FUNC31(dialog, "pause", buttons);

    FUNC22(x, y);
    FUNC42(dialog, TRUE);

    first = TRUE;
    do {
	(void) FUNC45(dialog);
	FUNC16(dialog, 0, 0, height, width, dialog_attr, border_attr, border2_attr);

	FUNC19(dialog, title);
	FUNC18(dialog, FALSE);

	FUNC5(dialog, dialog_attr);
	FUNC29(dialog, prompt, height, width);

	FUNC16(dialog,
		      gauge_y, 2 + MARGIN,
		      2 + MARGIN, width - 2 * (2 + MARGIN),
		      dialog_attr,
		      border_attr,
		      border2_attr);

	/*
	 * Clear the area for the progress bar by filling it with spaces
	 * in the title-attribute, and write the percentage with that
	 * attribute.
	 */
	(void) FUNC47(dialog, gauge_y + MARGIN, 4);
	FUNC5(dialog, title_attr);

	for (i = 0; i < (width - 2 * (3 + MARGIN)); i++)
	    (void) FUNC44(dialog, ' ');

	(void) FUNC47(dialog, gauge_y + MARGIN, (width / 2) - 2);
	(void) FUNC48(dialog, "%3d", seconds);

	/*
	 * Now draw a bar in reverse, relative to the background.
	 * The window attribute was useful for painting the background,
	 * but requires some tweaks to reverse it.
	 */
	x = (seconds * (width - 2 * (3 + MARGIN))) / seconds_orig;
	if ((title_attr & A_REVERSE) != 0) {
	    FUNC4(dialog, A_REVERSE);
	} else {
	    FUNC5(dialog, A_REVERSE);
	}
	(void) FUNC47(dialog, gauge_y + MARGIN, 4);
	for (i = 0; i < x; i++) {
	    chtype ch = FUNC46(dialog);
	    if (title_attr & A_REVERSE) {
		ch &= ~A_REVERSE;
	    }
	    (void) FUNC44(dialog, ch);
	}

	FUNC40(height - 2, width / 2 - 4, 6, '\n');
	if (have_buttons) {
	    FUNC15(dialog, border_attr, border2_attr, dialog_attr);
	    FUNC17(dialog, height - 2, 0, buttons, button, FALSE, width);
	}
	if (first) {
	    (void) FUNC49(dialog);
	    FUNC36(dialog);
	    first = FALSE;
	}

	for (step = 0;
	     (result == DLG_EXIT_UNKNOWN) && (step < 1000);
	     step += MY_TIMEOUT) {

	    FUNC41(MY_TIMEOUT);
	    key = FUNC23(dialog, &fkey);
	    if (key == ERR) {
		;		/* ignore errors in nodelay mode */
	    } else {
		if (FUNC33(key, fkey, &result))
		    break;
	    }

	    switch (key) {
#ifdef KEY_RESIZE
	    case KEY_RESIZE:
		FUNC37(dialog);
		FUNC11();	/* fill the background */
		FUNC14(dialog);		/* delete this window */
		height = old_height;
		width = old_width;
		FUNC38(prompt);
		FUNC43();	/* get it all onto the terminal */
		goto retry;
#endif
	    case DLGK_FIELD_NEXT:
		button = FUNC25(buttons, button);
		if (button < 0)
		    button = 0;
		FUNC17(dialog,
				 height - 2, 0,
				 buttons, button,
				 FALSE, width);
		break;
	    case DLGK_FIELD_PREV:
		button = FUNC28(buttons, button);
		if (button < 0)
		    button = 0;
		FUNC17(dialog,
				 height - 2, 0,
				 buttons, button,
				 FALSE, width);
		break;
	    case DLGK_ENTER:
		result = FUNC20(button);
		break;
	    case ERR:
		break;
	    default:
		if (FUNC39(key)) {
		    result = FUNC26(key - M_EVENT);
		    if (result < 0)
			result = DLG_EXIT_OK;
		}
		break;
	    }
	}
    } while ((result == DLG_EXIT_UNKNOWN) && (seconds-- > 0));

    FUNC3(1);
    FUNC21();
    FUNC14(dialog);
    FUNC38(prompt);

    dialog_vars.timeout_secs = save_timeout;

    return ((result == DLG_EXIT_UNKNOWN) ? DLG_EXIT_OK : result);
}
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
typedef  int /*<<< orphan*/  DLG_KEYS_BINDING ;

/* Variables and functions */
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
 int FALSE ; 
#define  HELPKEY_BINDINGS 131 
#define  KEY_RESIZE 130 
 int MARGIN ; 
 int /*<<< orphan*/  M_EVENT ; 
#define  SCROLLKEY_BINDINGS 129 
#define  TRAVERSE_BINDINGS 128 
 int TRUE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  border2_attr ; 
 int /*<<< orphan*/  border_attr ; 
 int /*<<< orphan*/  dialog_attr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*,int*,int*,int,int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char const**,int*) ; 
 int FUNC9 (int,char const**) ; 
 int /*<<< orphan*/  FUNC10 (int,int,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 
 int FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char const**,int,int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int FUNC21 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/ * FUNC23 (int,int,int,int) ; 
 int FUNC24 (char const**,int) ; 
 int FUNC25 (int) ; 
 int FUNC26 (char const**,int) ; 
 int FUNC27 (int /*<<< orphan*/ *,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC28 (int,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,char*,char const**) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC31 (int,int,int*) ; 
 char* FUNC32 (char const*) ; 
 int /*<<< orphan*/  FUNC33 (char*) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *) ; 
 int FUNC36 (int) ; 
 char** FUNC37 () ; 
 int /*<<< orphan*/  FUNC38 (char*) ; 
 int /*<<< orphan*/  FUNC39 (int) ; 

int
FUNC40(const char *title, const char *cprompt, int height, int width)
{
    /* *INDENT-OFF* */
    static DLG_KEYS_BINDING binding[] = {
	HELPKEY_BINDINGS,
	ENTERKEY_BINDINGS,
	SCROLLKEY_BINDINGS,
	TRAVERSE_BINDINGS,
	END_KEYS_BINDING
    };
    /* *INDENT-ON* */

    int x, y;
    int key = 0, fkey;
    int code;
    int button = FUNC13();
    WINDOW *dialog = 0;
    int result = DLG_EXIT_UNKNOWN;
    char *prompt;
    const char **buttons = FUNC37();
    int min_width = 25;
    bool show = TRUE;
    int page, last = 0, offset = 0;

#ifdef KEY_RESIZE
    int req_high = height;
    int req_wide = width;
#endif

    FUNC0(("# yesno args:\n"));
    FUNC2("title", title);
    FUNC2("message", cprompt);
    FUNC1("height", height);
    FUNC1("width", width);

#ifdef KEY_RESIZE
  restart:
#endif
    prompt = FUNC32(cprompt);
    FUNC33(prompt);
    FUNC8(buttons, &min_width);
    FUNC5(title, prompt, &height, &width, 2, min_width);
    FUNC28(height, width);
    FUNC12(height, width);

    x = FUNC6(width);
    y = FUNC7(height);

#ifdef KEY_RESIZE
    if (dialog != 0)
	FUNC22(dialog, height, width, y, x);
    else
#endif
    {
	dialog = FUNC23(height, width, y, x);
	FUNC30(dialog, "yesno", binding);
	FUNC29(dialog, "yesno", buttons);
    }

    FUNC16(dialog, 0, 0, height, width, dialog_attr, border_attr, border2_attr);
    FUNC15(dialog, border_attr, border2_attr, dialog_attr);
    FUNC19(dialog, title);
    FUNC18(dialog, FALSE);

    FUNC4(dialog, dialog_attr);

    page = height - (1 + 3 * MARGIN);
    FUNC17(dialog,
		     height - 2 * MARGIN, 0,
		     buttons, button, FALSE, width);

    while (result == DLG_EXIT_UNKNOWN) {
	if (show) {
	    last = FUNC27(dialog, prompt, offset,
				      page, width, TRUE);
	    FUNC34(dialog);
	    show = FALSE;
	}
	key = FUNC21(dialog, &fkey);
	if (FUNC31(key, fkey, &result))
	    break;
	if ((code = FUNC9(key, buttons)) >= 0) {
	    result = FUNC25(code);
	    break;
	}
	/* handle function keys */
	if (fkey) {
	    switch (key) {
	    case DLGK_FIELD_NEXT:
		button = FUNC24(buttons, button);
		if (button < 0)
		    button = 0;
		FUNC17(dialog,
				 height - 2, 0,
				 buttons, button,
				 FALSE, width);
		break;
	    case DLGK_FIELD_PREV:
		button = FUNC26(buttons, button);
		if (button < 0)
		    button = 0;
		FUNC17(dialog,
				 height - 2, 0,
				 buttons, button,
				 FALSE, width);
		break;
	    case DLGK_ENTER:
		result = FUNC36(button);
		break;
#ifdef KEY_RESIZE
	    case KEY_RESIZE:
		FUNC35(dialog);
		FUNC11();
		FUNC38(prompt);
		height = req_high;
		width = req_wide;
		show = TRUE;
		goto restart;
#endif
	    default:
		if (FUNC39(key)) {
		    result = FUNC36(key - M_EVENT);
		    if (result < 0)
			result = DLG_EXIT_OK;
		} else if (FUNC10(key, last, page,
					      &show, &offset) != 0) {
		    FUNC3();
		}
		break;
	    }
	} else {
	    FUNC3();
	}
    }

    FUNC14(dialog);
    FUNC20();
    FUNC38(prompt);
    return result;
}
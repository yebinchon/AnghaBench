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
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_2__ {int nocancel; } ;
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
 void* TRUE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  border2_attr ; 
 int /*<<< orphan*/  border_attr ; 
 int /*<<< orphan*/  dialog_attr ; 
 TYPE_1__ dialog_vars ; 
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
 int /*<<< orphan*/  FUNC21 (int,int) ; 
 int FUNC22 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/ * FUNC24 (int,int,int,int) ; 
 int FUNC25 (char const**,int) ; 
 int FUNC26 (int) ; 
 char** FUNC27 () ; 
 int FUNC28 (char const**,int) ; 
 int FUNC29 (int /*<<< orphan*/ *,char*,int,int,int,int) ; 
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
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ *) ; 

int
FUNC42(const char *title, const char *cprompt, int height, int width,
	      int pauseopt)
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

    int x, y, last = 0, page;
    int button;
    int key = 0, fkey;
    int result = DLG_EXIT_UNKNOWN;
    WINDOW *dialog = 0;
    char *prompt;
    const char **buttons = FUNC27();
    int offset = 0;
    int check;
    bool show = TRUE;
    int min_width = (pauseopt == 1 ? 12 : 0);
    bool save_nocancel = dialog_vars.nocancel;
#ifdef KEY_RESIZE
    int req_high;
    int req_wide;
#endif

    FUNC0(("# msgbox args:\n"));
    FUNC2("title", title);
    FUNC2("message", cprompt);
    FUNC1("height", height);
    FUNC1("width", width);
    FUNC1("pauseopt", pauseopt);

    dialog_vars.nocancel = TRUE;
    button = FUNC13();

#ifdef KEY_RESIZE
    req_high = height;
    req_wide = width;
  restart:
#endif

    FUNC8(buttons, &min_width);

    prompt = FUNC34(cprompt);
    FUNC35(prompt);
    FUNC5(title, prompt, &height, &width,
		  (pauseopt == 1 ? 2 : 0),
		  min_width);
    FUNC30(height, width);
    FUNC12(height, width);

    x = FUNC6(width);
    y = FUNC7(height);

#ifdef KEY_RESIZE
    if (dialog != 0)
	FUNC23(dialog, height, width, y, x);
    else
#endif
    {
	dialog = FUNC24(height, width, y, x);
	FUNC32(dialog, "msgbox", binding);
	FUNC31(dialog, "msgbox", buttons);
    }
    page = height - (1 + 3 * MARGIN);

    FUNC21(x, y);

    FUNC16(dialog, 0, 0, height, width, dialog_attr, border_attr, border2_attr);
    FUNC19(dialog, title);

    FUNC4(dialog, dialog_attr);

    if (pauseopt) {
	FUNC15(dialog, border_attr, border2_attr, dialog_attr);
	FUNC40(height - 2, width / 2 - 4, 6, '\n');
	FUNC17(dialog, height - 2, 0, buttons, button, FALSE, width);
	FUNC18(dialog, FALSE);

	while (result == DLG_EXIT_UNKNOWN) {
	    if (show) {
		last = FUNC29(dialog, prompt, offset,
					  page, width, pauseopt);
		FUNC36(dialog);
		show = FALSE;
	    }
	    key = FUNC22(dialog, &fkey);
	    if (FUNC33(key, fkey, &result))
		break;

	    if (!fkey && (check = FUNC9(key, buttons)) >= 0) {
		result = FUNC26(check);
		break;
	    }

	    if (fkey) {
		switch (key) {
#ifdef KEY_RESIZE
		case KEY_RESIZE:
		    FUNC37(dialog);
		    FUNC11();
		    FUNC38(prompt);
		    height = req_high;
		    width = req_wide;
		    show = TRUE;
		    goto restart;
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
		    result = FUNC26(button);
		    break;
		default:
		    if (FUNC39(key)) {
			result = FUNC26(key - M_EVENT);
			if (result < 0)
			    result = DLG_EXIT_OK;
		    } else if (FUNC10(key,
						  last,
						  page,
						  &show,
						  &offset) == 0) {
		    } else {
			FUNC3();
		    }
		    break;
		}
	    } else {
		FUNC3();
	    }
	}
    } else {
	FUNC29(dialog, prompt, offset, page, width, pauseopt);
	FUNC18(dialog, FALSE);
	FUNC41(dialog);
	FUNC36(dialog);
	result = DLG_EXIT_OK;
    }

    FUNC14(dialog);
    FUNC20();
    FUNC38(prompt);

    dialog_vars.nocancel = save_nocancel;

    return result;
}
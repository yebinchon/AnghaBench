#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int nocancel; } ;
struct TYPE_8__ {int /*<<< orphan*/  win; } ;
struct TYPE_9__ {TYPE_1__ obj; int /*<<< orphan*/  wide; scalar_t__ high; } ;
typedef  TYPE_2__ MY_OBJ ;
typedef  int /*<<< orphan*/  DLG_KEYS_BINDING ;

/* Variables and functions */
#define  DLGK_ENTER 135 
#define  DLGK_FIELD_NEXT 134 
#define  DLGK_FIELD_PREV 133 
 int DLG_EXIT_OK ; 
 int DLG_EXIT_UNKNOWN ; 
#define  END_KEYS_BINDING 132 
#define  ENTERKEY_BINDINGS 131 
 int FALSE ; 
#define  HELPKEY_BINDINGS 130 
#define  KEY_RESIZE 129 
 int /*<<< orphan*/  M_EVENT ; 
#define  TRAVERSE_BINDINGS 128 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  border2_attr ; 
 int /*<<< orphan*/  border_attr ; 
 int /*<<< orphan*/  dialog_attr ; 
 TYPE_7__ dialog_vars ; 
 int FUNC1 (int,char const**) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,char const**,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ,int*) ; 
 int FUNC7 (char const**,int) ; 
 int FUNC8 (int) ; 
 char** FUNC9 () ; 
 int FUNC10 (char const**,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char const**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int,int,int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,char const*,char const*) ; 

__attribute__((used)) static int
FUNC20(MY_OBJ * obj, const char *title, const char *cprompt)
{
    /* *INDENT-OFF* */
    static DLG_KEYS_BINDING binding[] = {
	HELPKEY_BINDINGS,
	ENTERKEY_BINDINGS,
	TRAVERSE_BINDINGS,
	END_KEYS_BINDING
    };
    /* *INDENT-ON* */

    int button;
    int key = 0, fkey;
    int result = DLG_EXIT_UNKNOWN;
    const char **buttons = FUNC9();
    int check;
    bool save_nocancel = dialog_vars.nocancel;
    bool redraw = TRUE;

    dialog_vars.nocancel = TRUE;
    button = FUNC2();

#ifdef KEY_RESIZE
  restart:
#endif

    FUNC12(obj->obj.win, "progressbox", binding);
    FUNC11(obj->obj.win, "progressbox", buttons);

    FUNC3(obj->obj.win, border_attr, border2_attr, dialog_attr);

    while (result == DLG_EXIT_UNKNOWN) {
	if (redraw) {
	    redraw = FALSE;
	    if (button < 0)
		button = 0;
	    FUNC4(obj->obj.win,
			     obj->high - 2, 0,
			     buttons, button,
			     FALSE, obj->wide);
	}

	key = FUNC6(obj->obj.win, &fkey);
	if (FUNC13(key, fkey, &result))
	    break;

	if (!fkey && (check = FUNC1(key, buttons)) >= 0) {
	    result = FUNC8(check);
	    break;
	}

	if (fkey) {
	    switch (key) {
	    case DLGK_FIELD_NEXT:
		button = FUNC7(buttons, button);
		redraw = TRUE;
		break;
	    case DLGK_FIELD_PREV:
		button = FUNC10(buttons, button);
		redraw = TRUE;
		break;
	    case DLGK_ENTER:
		result = FUNC8(button);
		break;
#ifdef KEY_RESIZE
	    case KEY_RESIZE:
		FUNC15(obj->obj.win);
		FUNC18(obj);
		FUNC19(obj, title, cprompt);
		FUNC17(obj, TRUE);
		redraw = TRUE;
		goto restart;
#endif
	    default:
		if (FUNC16(key)) {
		    result = FUNC8(key - M_EVENT);
		    if (result < 0)
			result = DLG_EXIT_OK;
		} else {
		    FUNC0();
		}
		break;
	    }

	} else {
	    FUNC0();
	}
    }
    FUNC5();
    FUNC14(obj->obj.win);

    dialog_vars.nocancel = save_nocancel;
    return result;
}
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
#define  DLGK_ENTER 133 
 int DLG_EXIT_CANCEL ; 
 int DLG_EXIT_ESC ; 
 int DLG_EXIT_OK ; 
 int DLG_EXIT_UNKNOWN ; 
#define  END_KEYS_BINDING 132 
#define  ENTERKEY_BINDINGS 131 
 int ERR ; 
 int ESC ; 
 int FALSE ; 
#define  HELPKEY_BINDINGS 130 
#define  INPUTSTR_BINDINGS 129 
#define  KEY_RESIZE 128 
 int MARGIN ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int TRUE ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*,int*,int,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int*) ; 
 int* FUNC9 (char const*) ; 
 int FUNC10 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  searchbox_attr ; 
 int /*<<< orphan*/  searchbox_border2_attr ; 
 int /*<<< orphan*/  searchbox_border_attr ; 
 int /*<<< orphan*/  searchbox_title_attr ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char const*,int const) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC20(WINDOW *dialog, char *input, int height, int width)
{
    /* *INDENT-OFF* */
    static DLG_KEYS_BINDING binding[] = {
	INPUTSTR_BINDINGS,
	HELPKEY_BINDINGS,
	ENTERKEY_BINDINGS,
	END_KEYS_BINDING
    };
    /* *INDENT-ON* */

    int old_x, old_y;
    int box_x, box_y;
    int box_height, box_width;
    int offset = 0;
    int key = 0;
    int fkey = 0;
    bool first = TRUE;
    int result = DLG_EXIT_UNKNOWN;
    const char *caption = FUNC2("Search");
    int len_caption = FUNC4(caption);
    const int *indx;
    int limit;
    WINDOW *widget;

    FUNC14(dialog, old_y, old_x);

    box_height = 1 + (2 * MARGIN);
    box_width = len_caption + (2 * (MARGIN + 2));
    box_width = FUNC0(box_width, 30);
    box_width = FUNC1(box_width, FUNC15(dialog) - 2 * MARGIN);
    len_caption = FUNC1(len_caption, box_width - (2 * (MARGIN + 1)));

    box_x = (width - box_width) / 2;
    box_y = (height - box_height) / 2;
    widget = FUNC11(dialog,
				  box_height, box_width,
				  old_y + box_y, old_x + box_x);
    FUNC16(widget, TRUE);
    FUNC12(widget, "searchbox", binding);

    FUNC6(widget, 0, 0, box_height, box_width,
		  searchbox_attr,
		  searchbox_border_attr,
		  searchbox_border2_attr);
    FUNC3(widget, searchbox_title_attr);
    (void) FUNC19(widget, 0, (box_width - len_caption) / 2);

    indx = FUNC9(caption);
    limit = FUNC10(caption, len_caption, 0);
    (void) FUNC18(widget, caption + indx[0], indx[limit] - indx[0]);

    box_width -= 2;
    offset = FUNC4(input);

    while (result == DLG_EXIT_UNKNOWN) {
	if (!first) {
	    key = FUNC8(widget, &fkey);
	    if (fkey) {
		switch (fkey) {
#ifdef KEY_RESIZE
		case KEY_RESIZE:
		    result = DLG_EXIT_CANCEL;
		    continue;
#endif
		case DLGK_ENTER:
		    result = DLG_EXIT_OK;
		    continue;
		}
	    } else if (key == ESC) {
		result = DLG_EXIT_ESC;
		continue;
	    } else if (key == ERR) {
		FUNC17(50);
		continue;
	    }
	}
	if (FUNC7(input, &offset, key, fkey, first)) {
	    FUNC13(widget, input, offset, searchbox_attr,
			    1, 1, box_width, FALSE, first);
	    first = FALSE;
	}
    }
    FUNC5(widget);
    return result;
}
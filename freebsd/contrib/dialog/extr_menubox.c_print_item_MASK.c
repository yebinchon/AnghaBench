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
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  chtype ;
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_8__ {scalar_t__ no_items; int /*<<< orphan*/  no_tags; } ;
struct TYPE_7__ {int item_x; int tag_x; int menu_width; } ;
struct TYPE_6__ {char* name; char* text; int /*<<< orphan*/  help; } ;
typedef  int const Mode ;
typedef  TYPE_1__ DIALOG_LISTITEM ;
typedef  TYPE_2__ ALL_DATA ;

/* Variables and functions */
#define  Editing 130 
 int FALSE ; 
 int GUTTER ; 
 int INPUT_ROWS ; 
 int FUNC0 (int) ; 
#define  Selected 129 
 int TRUE ; 
#define  Unselected 128 
 int /*<<< orphan*/  dialog_attr ; 
 TYPE_5__ dialog_vars ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int,int,int const) ; 
 int /*<<< orphan*/  item_attr ; 
 int /*<<< orphan*/  item_selected_attr ; 
 int /*<<< orphan*/  menubox_attr ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int,char*) ; 

__attribute__((used)) static void
FUNC8(ALL_DATA * data,
	   WINDOW *win,
	   DIALOG_LISTITEM * item,
	   int choice,
	   Mode selected,
	   bool is_inputmenu)
{
    chtype save = FUNC3(win);
    int n;
    int climit = (data->item_x - data->tag_x - GUTTER);
    int my_width = data->menu_width;
    int my_x = data->item_x;
    int my_y = FUNC0(choice);
    bool both = (!dialog_vars.no_tags && !dialog_vars.no_items);
    bool first = TRUE;
    chtype bordchar;
    const char *show = (dialog_vars.no_items
			? item->name
			: item->text);

    switch (selected) {
    default:
    case Unselected:
	bordchar = item_attr;
	break;
    case Selected:
	bordchar = item_selected_attr;
	break;
    case Editing:
	bordchar = dialog_attr;
	break;
    }

    /* Clear 'residue' of last item and mark current current item */
    if (is_inputmenu) {
	FUNC1(win, (selected != Unselected) ? item_selected_attr : item_attr);
	for (n = my_y - 1; n < my_y + INPUT_ROWS - 1; n++) {
	    FUNC6(win, n, 0);
	    FUNC7(win, "%*s", my_width, " ");
	}
    } else {
	FUNC1(win, menubox_attr);
	FUNC6(win, my_y, 0);
	FUNC7(win, "%*s", my_width, " ");
    }

    /* highlight first char of the tag to be special */
    if (both) {
	(void) FUNC6(win, my_y, data->tag_x);
	FUNC5(win, item->name, climit, first, selected);
	first = FALSE;
    }

    /* Draw the input field box (only for inputmenu) */
    (void) FUNC6(win, my_y, my_x);
    if (is_inputmenu) {
	my_width -= 1;
	FUNC2(win, my_y - 1, my_x, INPUT_ROWS, my_width - my_x - data->tag_x,
		     bordchar,
		     bordchar);
	my_width -= 1;
	++my_x;
    }

    /* print actual item */
    FUNC6(win, my_y, my_x);
    FUNC5(win, show, my_width - my_x, first, selected);

    if (selected) {
	FUNC4(item->help);
    }
    FUNC1(win, save);
}
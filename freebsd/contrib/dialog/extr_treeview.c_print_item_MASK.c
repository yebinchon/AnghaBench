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
struct TYPE_8__ {scalar_t__ no_items; } ;
struct TYPE_7__ {int check_x; int use_width; int item_x; scalar_t__ is_check; int /*<<< orphan*/ * list; } ;
struct TYPE_6__ {char* name; char* text; size_t state; int /*<<< orphan*/  help; } ;
typedef  TYPE_1__ DIALOG_LISTITEM ;
typedef  TYPE_2__ ALL_DATA ;

/* Variables and functions */
 char ACS_VLINE ; 
 int INDENT ; 
 int TRUE ; 
 int /*<<< orphan*/  check_attr ; 
 int /*<<< orphan*/  check_selected_attr ; 
 TYPE_5__ dialog_vars ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  item_attr ; 
 int /*<<< orphan*/  item_selected_attr ; 
 int /*<<< orphan*/  menubox_attr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char const) ; 

__attribute__((used)) static void
FUNC8(ALL_DATA * data,
	   DIALOG_LISTITEM * item,
	   const char *states,
	   int depths,
	   int choice,
	   int selected)
{
    WINDOW *win = data->list;
    chtype save = FUNC1(win);
    int i;
    bool first = TRUE;
    int climit = (FUNC4(win) - data->check_x + 1);
    const char *show = (dialog_vars.no_items
			? item->name
			: item->text);

    /* Clear 'residue' of last item */
    FUNC0(win, menubox_attr);
    (void) FUNC6(win, choice, 0);
    for (i = 0; i < data->use_width; i++)
	(void) FUNC5(win, ' ');

    (void) FUNC6(win, choice, data->check_x);
    FUNC0(win, selected ? check_selected_attr : check_attr);
    (void) FUNC7(win,
		   data->is_check ? "[%c]" : "(%c)",
		   states[item->state]);
    FUNC0(win, menubox_attr);

    FUNC0(win, selected ? item_selected_attr : item_attr);
    for (i = 0; i < depths; ++i) {
	int j;
	(void) FUNC6(win, choice, data->item_x + INDENT * i);
	(void) FUNC5(win, ACS_VLINE);
	for (j = INDENT - 1; j > 0; --j)
	    (void) FUNC5(win, ' ');
    }
    (void) FUNC6(win, choice, data->item_x + INDENT * depths);

    FUNC3(win, show, climit, first, selected);

    if (selected) {
	FUNC2(item->help);
    }
    FUNC0(win, save);
}
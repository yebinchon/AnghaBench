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
struct TYPE_7__ {int check_x; int use_width; scalar_t__ checkflag; int item_x; } ;
struct TYPE_6__ {char* name; char* text; size_t state; int /*<<< orphan*/  help; } ;
typedef  TYPE_1__ DIALOG_LISTITEM ;
typedef  TYPE_2__ ALL_DATA ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ FLAG_CHECK ; 
 int TRUE ; 
 int /*<<< orphan*/  check_attr ; 
 int /*<<< orphan*/  check_selected_attr ; 
 TYPE_5__ dialog_vars ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  menubox_attr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char const) ; 

__attribute__((used)) static void
FUNC8(ALL_DATA * data,
	   WINDOW *win,
	   DIALOG_LISTITEM * item,
	   const char *states,
	   int choice,
	   int selected)
{
    chtype save = FUNC1(win);
    int i;
    bool both = (!dialog_vars.no_tags && !dialog_vars.no_items);
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
		   (data->checkflag == FLAG_CHECK) ? "[%c]" : "(%c)",
		   states[item->state]);
    FUNC0(win, menubox_attr);
    (void) FUNC5(win, ' ');

    if (both) {
	FUNC3(win, item->name, climit, first, selected);
	first = FALSE;
    }

    (void) FUNC6(win, choice, data->item_x);
    FUNC3(win, show, climit, first, selected);

    if (selected) {
	FUNC2(item->help);
    }
    FUNC0(win, save);
}
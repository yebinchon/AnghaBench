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
struct TYPE_7__ {int item_x; int check_x; } ;
struct TYPE_6__ {char* name; char* text; int /*<<< orphan*/  help; } ;
typedef  TYPE_1__ DIALOG_LISTITEM ;
typedef  TYPE_2__ ALL_DATA ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 TYPE_5__ dialog_vars ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  menubox_attr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void
FUNC7(ALL_DATA * all,
	   WINDOW *win,
	   DIALOG_LISTITEM * item,
	   int row,
	   int selected)
{
    chtype save = FUNC1(win);
    int i;
    bool both = (!dialog_vars.no_tags && !dialog_vars.no_items);
    bool first = TRUE;
    int climit = (all->item_x - all->check_x - 1);
    const char *show = (dialog_vars.no_items
			? item->name
			: item->text);

    /* Clear 'residue' of last item */
    FUNC0(win, menubox_attr);
    (void) FUNC6(win, row, 0);
    for (i = 0; i < FUNC4(win); i++)
	(void) FUNC5(win, ' ');

    (void) FUNC6(win, row, all->check_x);
    FUNC0(win, menubox_attr);

    if (both) {
	FUNC3(win, item->name, climit, first, selected);
	(void) FUNC5(win, ' ');
	first = FALSE;
    }

    (void) FUNC6(win, row, all->item_x);
    climit = (FUNC4(win) - all->item_x + 1);
    FUNC3(win, show, climit, first, selected);

    if (selected) {
	FUNC2(item->help);
    }
    FUNC0(win, save);
}
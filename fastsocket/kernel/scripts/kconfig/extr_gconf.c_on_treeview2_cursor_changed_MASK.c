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
struct menu {int dummy; } ;
typedef  int /*<<< orphan*/  gpointer ;
typedef  int /*<<< orphan*/  GtkTreeView ;
typedef  int /*<<< orphan*/  GtkTreeSelection ;
typedef  int /*<<< orphan*/  GtkTreeIter ;

/* Variables and functions */
 int /*<<< orphan*/  COL_MENU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct menu**,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  model2 ; 
 int /*<<< orphan*/  FUNC3 (struct menu*) ; 

void
FUNC4(GtkTreeView * treeview, gpointer user_data)
{
	GtkTreeSelection *selection;
	GtkTreeIter iter;
	struct menu *menu;

	selection = FUNC2(treeview);
	if (FUNC1(selection, &model2, &iter)) {
		FUNC0(model2, &iter, COL_MENU, &menu, -1);
		FUNC3(menu);
	}
}
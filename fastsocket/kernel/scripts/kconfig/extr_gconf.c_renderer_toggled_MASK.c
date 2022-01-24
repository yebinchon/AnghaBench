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
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  GtkTreeSelection ;
typedef  int /*<<< orphan*/  GtkTreePath ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  int /*<<< orphan*/  GtkCellRendererToggle ;

/* Variables and functions */
 int /*<<< orphan*/  COL_MENU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct menu**,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  model2 ; 
 int /*<<< orphan*/  FUNC9 (struct menu*) ; 
 int /*<<< orphan*/  tree2_w ; 

__attribute__((used)) static void FUNC10(GtkCellRendererToggle * cell,
			     gchar * path_string, gpointer user_data)
{
	GtkTreePath *path, *sel_path = NULL;
	GtkTreeIter iter, sel_iter;
	GtkTreeSelection *sel;
	struct menu *menu;

	path = FUNC6(path_string);
	if (!FUNC2(model2, &iter, path))
		return;

	sel = FUNC8(FUNC0(tree2_w));
	if (FUNC7(sel, NULL, &sel_iter))
		sel_path = FUNC3(model2, &sel_iter);
	if (!sel_path)
		goto out1;
	if (FUNC4(path, sel_path))
		goto out2;

	FUNC1(model2, &iter, COL_MENU, &menu, -1);
	FUNC9(menu);

      out2:
	FUNC5(sel_path);
      out1:
	FUNC5(path);
}
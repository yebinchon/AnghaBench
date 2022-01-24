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
typedef  int /*<<< orphan*/  GtkTreeViewColumn ;
typedef  int /*<<< orphan*/  GtkTreeView ;
typedef  int /*<<< orphan*/  GtkTreeSelection ;
typedef  int /*<<< orphan*/  GtkCellRenderer ;

/* Variables and functions */
 int /*<<< orphan*/  COL_BTNACT ; 
 int /*<<< orphan*/  COL_BTNINC ; 
 int /*<<< orphan*/  COL_BTNRAD ; 
 int /*<<< orphan*/  COL_BTNVIS ; 
 int /*<<< orphan*/  COL_COLOR ; 
 int /*<<< orphan*/  COL_OPTION ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GTK_SELECTION_SINGLE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  model1 ; 
 int /*<<< orphan*/  tree1_w ; 

void FUNC16(void)
{
	GtkTreeView *view = FUNC0(tree1_w);
	GtkCellRenderer *renderer;
	GtkTreeSelection *sel;
	GtkTreeViewColumn *column;

	FUNC13(view, model1);
	FUNC12(view, TRUE);
	FUNC14(view, FALSE);

	column = FUNC7();
	FUNC6(view, column);
	FUNC10(column, FUNC2("Options"));

	renderer = FUNC4();
	FUNC8(FUNC1(column),
					renderer, FALSE);
	FUNC9(FUNC1(column),
					    renderer,
					    "active", COL_BTNACT,
					    "inconsistent", COL_BTNINC,
					    "visible", COL_BTNVIS,
					    "radio", COL_BTNRAD, NULL);
	renderer = FUNC3();
	FUNC8(FUNC1(column),
					renderer, FALSE);
	FUNC9(FUNC1(column),
					    renderer,
					    "text", COL_OPTION,
					    "foreground-gdk",
					    COL_COLOR, NULL);

	sel = FUNC11(view);
	FUNC5(sel, GTK_SELECTION_SINGLE);
	FUNC15(tree1_w);
}
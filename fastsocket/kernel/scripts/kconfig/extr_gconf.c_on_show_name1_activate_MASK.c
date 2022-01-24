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
typedef  int /*<<< orphan*/  gpointer ;
struct TYPE_2__ {int /*<<< orphan*/  active; } ;
typedef  int /*<<< orphan*/  GtkTreeViewColumn ;
typedef  int /*<<< orphan*/  GtkMenuItem ;

/* Variables and functions */
 int /*<<< orphan*/  COL_NAME ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  show_name ; 
 int /*<<< orphan*/  tree2_w ; 

void FUNC4(GtkMenuItem * menuitem, gpointer user_data)
{
	GtkTreeViewColumn *col;

	show_name = FUNC0(menuitem)->active;
	col = FUNC3(FUNC1(tree2_w), COL_NAME);
	if (col)
		FUNC2(col, show_name);
}
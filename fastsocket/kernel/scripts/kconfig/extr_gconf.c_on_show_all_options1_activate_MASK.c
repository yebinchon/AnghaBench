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
typedef  int /*<<< orphan*/  GtkMenuItem ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rootmenu ; 
 int /*<<< orphan*/  show_all ; 
 int /*<<< orphan*/  tree2 ; 

void
FUNC3(GtkMenuItem * menuitem, gpointer user_data)
{
	show_all = FUNC0(menuitem)->active;

	FUNC2(tree2);
	FUNC1(&rootmenu);	// instead of update_tree to speed-up
}
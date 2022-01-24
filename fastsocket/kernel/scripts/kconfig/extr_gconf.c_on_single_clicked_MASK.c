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
typedef  int /*<<< orphan*/  gpointer ;
typedef  int /*<<< orphan*/  GtkButton ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SINGLE_VIEW ; 
 int /*<<< orphan*/ * current ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hpaned ; 
 int /*<<< orphan*/  rootmenu ; 
 int /*<<< orphan*/  tree1_w ; 
 int /*<<< orphan*/  view_mode ; 

void FUNC4(GtkButton * button, gpointer user_data)
{
	view_mode = SINGLE_VIEW;
	FUNC2(FUNC0(hpaned), 0);
	FUNC3(tree1_w);
	current = &rootmenu;
	FUNC1();
}
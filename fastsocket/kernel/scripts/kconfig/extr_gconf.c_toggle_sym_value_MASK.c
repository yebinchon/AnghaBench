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
struct menu {int /*<<< orphan*/  sym; } ;

/* Variables and functions */
 scalar_t__ FULL_VIEW ; 
 scalar_t__ SINGLE_VIEW ; 
 scalar_t__ SPLIT_VIEW ; 
 int /*<<< orphan*/ * browsed ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  rootmenu ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ view_mode ; 

__attribute__((used)) static void FUNC4(struct menu *menu)
{
	if (!menu->sym)
		return;

	FUNC2(menu->sym);
	if (view_mode == FULL_VIEW)
		FUNC3(&rootmenu, NULL);
	else if (view_mode == SPLIT_VIEW) {
		FUNC3(browsed, NULL);
		FUNC0();
	}
	else if (view_mode == SINGLE_VIEW)
		FUNC1();	//fixme: keep exp/coll
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int use_height; TYPE_1__* list; } ;
struct TYPE_7__ {int top_index; } ;
typedef  TYPE_2__ ALL_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,int) ; 

__attribute__((used)) static void
FUNC5(ALL_DATA * all, int cur_item, int selected)
{
    int top_item = all->list[selected].top_index;
    int cur_row = FUNC1(all, cur_item, selected);
    int top_row = FUNC1(all, top_item, selected);

    if (cur_row < top_row) {
	top_item = cur_item;
    } else if ((cur_row - top_row) >= all->use_height) {
	top_item = FUNC3(all, cur_row + 1 - all->use_height, selected);
    }
    if (cur_row < all->use_height) {
	top_item = FUNC3(all, 0, selected);
    }
    FUNC0(("# fix_top_item(cur_item %d, %s) ->top_item %d\n",
	       cur_item, FUNC2(selected), top_item));
    FUNC4(all, top_item, selected);
}
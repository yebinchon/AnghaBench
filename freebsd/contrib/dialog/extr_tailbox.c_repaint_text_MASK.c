#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  win; int /*<<< orphan*/ * input; } ;
struct TYPE_6__ {TYPE_1__ obj; int /*<<< orphan*/  last_pos; int /*<<< orphan*/  hscroll; int /*<<< orphan*/  old_hscroll; } ;
typedef  TYPE_2__ MY_OBJ ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(MY_OBJ * obj)
{
    FILE *fp = obj->obj.input;
    int cur_y, cur_x;

    FUNC1(obj->obj.win, cur_y, cur_x);
    obj->old_hscroll = obj->hscroll;

    FUNC2(obj);
    obj->last_pos = FUNC0(fp);

    (void) FUNC3(obj->obj.win, cur_y, cur_x);	/* Restore cursor position */
    FUNC4(obj->obj.win);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int mode; void* step_y; void* step_x; } ;
typedef  TYPE_1__ mseRegion ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int,int) ; 
 TYPE_1__* FUNC2 (int,int,int,int,int /*<<< orphan*/ ) ; 

void
FUNC3(int y, int x,
		      int height, int width,
		      int code,
		      int step_y, int step_x,
		      int mode)
{
    mseRegion *butPtr = FUNC2(y, x, height, width, -FUNC0(code));
    butPtr->mode = mode;
    butPtr->step_x = FUNC1(1, step_x);
    butPtr->step_y = FUNC1(1, step_y);
}
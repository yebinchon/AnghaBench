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
struct TYPE_3__ {scalar_t__ win; scalar_t__ mousex; } ;
typedef  TYPE_1__ LIST ;

/* Variables and functions */
 int /*<<< orphan*/  KEY_NEXT ; 
 int /*<<< orphan*/  KEY_NPAGE ; 
 int /*<<< orphan*/  KEY_PPAGE ; 
 int /*<<< orphan*/  KEY_PREVIOUS ; 
 scalar_t__ MOUSE_D ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(LIST * list)
{
    int x;
    int y;
    int top;
    int right;
    int bottom;

    if (list->win != 0) {
	FUNC2(list->win, y, x);
	top = y - 1;
	right = FUNC0(list->win);
	bottom = y + FUNC1(list->win);

	FUNC3(top, x, right,
		       ((list->mousex == MOUSE_D)
			? KEY_PREVIOUS
			: KEY_PPAGE));
	FUNC3(bottom, x, right,
		       ((list->mousex == MOUSE_D)
			? KEY_NEXT
			: KEY_NPAGE));
    }
}
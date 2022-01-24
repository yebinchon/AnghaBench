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
struct TYPE_3__ {int choice; int offset; int /*<<< orphan*/  win; } ;
typedef  TYPE_1__ LIST ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(LIST * list)
{
    int high = FUNC0(list->win);

    if (list->choice < list->offset) {
	list->offset = list->choice;
    }
    if (list->choice - list->offset >= high)
	list->offset = list->choice - high + 1;
}
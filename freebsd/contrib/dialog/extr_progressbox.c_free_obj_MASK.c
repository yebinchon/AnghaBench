#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  win; } ;
struct TYPE_7__ {struct TYPE_7__* text; struct TYPE_7__* link; struct TYPE_7__* wrote; struct TYPE_7__* prompt; TYPE_1__ obj; } ;
typedef  TYPE_2__ WROTE ;
typedef  TYPE_2__ MY_OBJ ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC2(MY_OBJ * obj)
{
    FUNC0(obj->obj.win);
    FUNC1(obj->prompt);
#ifdef KEY_RESIZE
    while (obj->wrote) {
	WROTE *wrote = obj->wrote;
	obj->wrote = wrote->link;
	free(wrote->text);
	free(wrote);
    }
#endif
    FUNC1(obj);
}
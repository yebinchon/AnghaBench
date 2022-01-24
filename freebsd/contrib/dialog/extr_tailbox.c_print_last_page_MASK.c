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
struct TYPE_6__ {scalar_t__ bg_task; int /*<<< orphan*/  win; } ;
struct TYPE_7__ {int /*<<< orphan*/  text; TYPE_1__ obj; } ;
typedef  TYPE_2__ MY_OBJ ;

/* Variables and functions */
 int MARGIN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int) ; 

__attribute__((used)) static void
FUNC4(MY_OBJ * obj)
{
    int high = FUNC1(obj->obj.win) - (2 * MARGIN + (obj->obj.bg_task ? 1 : 3));
    int wide = FUNC0(obj->text);

    FUNC2(obj, high);
    FUNC3(obj, high, wide);
}
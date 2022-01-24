#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ hwstate; int /*<<< orphan*/  swstate; int /*<<< orphan*/  queue; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ vwsnd_port_t ;
typedef  scalar_t__ vwsnd_port_hwstate_t ;
struct TYPE_8__ {TYPE_1__ wport; } ;
typedef  TYPE_2__ vwsnd_dev_t ;
struct TYPE_9__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 scalar_t__ HW_STOPPED ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* current ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static void FUNC10(vwsnd_dev_t *devc)
{
	vwsnd_port_t *wport = &devc->wport;
	FUNC3(wait, current);
	unsigned long flags;
	vwsnd_port_hwstate_t hwstate;

	FUNC0("(devc=0x%p)\n", devc);
	FUNC4(&wport->queue, &wait);
	while (1) {
		FUNC7(TASK_UNINTERRUPTIBLE);
		FUNC8(&wport->lock, flags);
		{
			hwstate = wport->hwstate;
		}
		FUNC9(&wport->lock, flags);
		if (hwstate == HW_STOPPED)
			break;
		FUNC6();
	}
	current->state = TASK_RUNNING;
	FUNC5(&wport->queue, &wait);
	FUNC1("swstate = %d, hwstate = %d\n", wport->swstate, wport->hwstate);
	FUNC2();
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ hwstate; scalar_t__ byte_count; int /*<<< orphan*/ * swbuf; int /*<<< orphan*/  chan; int /*<<< orphan*/  queue; int /*<<< orphan*/  lock; int /*<<< orphan*/  swstate; } ;
typedef  TYPE_1__ vwsnd_port_t ;
typedef  scalar_t__ vwsnd_port_hwstate_t ;
struct TYPE_8__ {int /*<<< orphan*/  lith; TYPE_1__ rport; } ;
typedef  TYPE_2__ vwsnd_dev_t ;
struct TYPE_9__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 scalar_t__ HW_STOPPED ; 
 int /*<<< orphan*/  SW_INITIAL ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_5__* current ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static void FUNC12(vwsnd_dev_t *devc,
			      vwsnd_port_t *aport,
			      unsigned int mask)
{
	unsigned long flags;
	vwsnd_port_hwstate_t hwstate;
	FUNC0(wait, current);

	aport->swstate = SW_INITIAL;
	FUNC3(&aport->queue, &wait);
	while (1) {
		FUNC8(TASK_UNINTERRUPTIBLE);
		FUNC9(&aport->lock, flags);
		{
			hwstate = aport->hwstate;
		}		
		FUNC10(&aport->lock, flags);
		if (hwstate == HW_STOPPED)
			break;
		FUNC7();
	}
	current->state = TASK_RUNNING;
	FUNC6(&aport->queue, &wait);
	FUNC4(&devc->lith, mask);
	if (aport == &devc->rport)
		FUNC1(&devc->lith);
	else /* aport == &devc->wport) */
		FUNC2(&devc->lith);
	FUNC5(&aport->chan);
	FUNC11(aport->swbuf);
	aport->swbuf = NULL;
	aport->byte_count = 0;
}
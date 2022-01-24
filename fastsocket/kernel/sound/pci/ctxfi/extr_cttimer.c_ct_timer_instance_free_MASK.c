#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ct_timer_instance {int /*<<< orphan*/  instance_list; struct ct_timer* timer_base; } ;
struct ct_timer {int /*<<< orphan*/  list_lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* free_instance ) (struct ct_timer_instance*) ;int /*<<< orphan*/  (* stop ) (struct ct_timer_instance*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ct_timer_instance*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ct_timer_instance*) ; 
 int /*<<< orphan*/  FUNC5 (struct ct_timer_instance*) ; 

void FUNC6(struct ct_timer_instance *ti)
{
	struct ct_timer *atimer = ti->timer_base;

	atimer->ops->stop(ti); /* to be sure */
	if (atimer->ops->free_instance)
		atimer->ops->free_instance(ti);

	FUNC2(&atimer->list_lock);
	FUNC1(&ti->instance_list);
	FUNC3(&atimer->list_lock);

	FUNC0(ti);
}
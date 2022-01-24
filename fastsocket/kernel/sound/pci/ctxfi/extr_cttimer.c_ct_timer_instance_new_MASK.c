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
struct ct_timer_instance {int /*<<< orphan*/  instance_list; int /*<<< orphan*/  substream; struct ct_atc_pcm* apcm; struct ct_timer* timer_base; int /*<<< orphan*/  running_list; int /*<<< orphan*/  lock; } ;
struct ct_timer {int /*<<< orphan*/  list_lock; int /*<<< orphan*/  instance_head; TYPE_1__* ops; } ;
struct ct_atc_pcm {int /*<<< orphan*/  substream; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* init ) (struct ct_timer_instance*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ct_timer_instance* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ct_timer_instance*) ; 

struct ct_timer_instance *
FUNC7(struct ct_timer *atimer, struct ct_atc_pcm *apcm)
{
	struct ct_timer_instance *ti;

	ti = FUNC1(sizeof(*ti), GFP_KERNEL);
	if (!ti)
		return NULL;
	FUNC3(&ti->lock);
	FUNC0(&ti->instance_list);
	FUNC0(&ti->running_list);
	ti->timer_base = atimer;
	ti->apcm = apcm;
	ti->substream = apcm->substream;
	if (atimer->ops->init)
		atimer->ops->init(ti);

	FUNC4(&atimer->list_lock);
	FUNC2(&ti->instance_list, &atimer->instance_head);
	FUNC5(&atimer->list_lock);

	return ti;
}
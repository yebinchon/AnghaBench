#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sfq_sched_data {scalar_t__ perturb_period; int /*<<< orphan*/  perturb_timer; int /*<<< orphan*/  perturbation; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct sfq_sched_data* FUNC2 (struct Qdisc*) ; 

__attribute__((used)) static void FUNC3(unsigned long arg)
{
	struct Qdisc *sch = (struct Qdisc *)arg;
	struct sfq_sched_data *q = FUNC2(sch);

	q->perturbation = FUNC1();

	if (q->perturb_period)
		FUNC0(&q->perturb_timer, jiffies + q->perturb_period);
}
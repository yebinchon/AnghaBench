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
struct task_struct {int dummy; } ;
struct rq {int /*<<< orphan*/  post_schedule; } ;

/* Variables and functions */
 struct task_struct* FUNC0 (struct rq*) ; 
 int /*<<< orphan*/  FUNC1 (struct rq*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct rq*) ; 

__attribute__((used)) static struct task_struct *FUNC3(struct rq *rq)
{
	struct task_struct *p = FUNC0(rq);

	/* The running task is never eligible for pushing */
	if (p)
		FUNC1(rq, p);

#ifdef CONFIG_SMP
	/*
	 * We detect this state here so that we can avoid taking the RQ
	 * lock again later if there is no need to push
	 */
	rq->post_schedule = has_pushable_tasks(rq);
#endif

	return p;
}
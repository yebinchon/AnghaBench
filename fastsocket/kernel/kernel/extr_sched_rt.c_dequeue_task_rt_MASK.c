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
struct sched_rt_entity {int dummy; } ;
struct task_struct {struct sched_rt_entity rt; } ;
struct rq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rq*) ; 
 int /*<<< orphan*/  FUNC1 (struct rq*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct sched_rt_entity*) ; 
 int /*<<< orphan*/  FUNC3 (struct rq*) ; 

__attribute__((used)) static void FUNC4(struct rq *rq, struct task_struct *p, int flags)
{
	struct sched_rt_entity *rt_se = &p->rt;

	FUNC3(rq);
	FUNC2(rt_se);

	FUNC1(rq, p);

	FUNC0(rq);
}
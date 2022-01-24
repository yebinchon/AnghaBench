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
struct rt_rq {int /*<<< orphan*/  rt_nr_running; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sched_rt_entity*,struct rt_rq*) ; 
 int /*<<< orphan*/  FUNC2 (struct sched_rt_entity*,struct rt_rq*) ; 
 int /*<<< orphan*/  FUNC3 (struct rt_rq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sched_rt_entity*) ; 

__attribute__((used)) static inline
void FUNC6(struct sched_rt_entity *rt_se, struct rt_rq *rt_rq)
{
	FUNC0(!FUNC4(FUNC5(rt_se)));
	FUNC0(!rt_rq->rt_nr_running);
	rt_rq->rt_nr_running--;

	FUNC3(rt_rq, FUNC5(rt_se));
	FUNC2(rt_se, rt_rq);
	FUNC1(rt_se, rt_rq);
}
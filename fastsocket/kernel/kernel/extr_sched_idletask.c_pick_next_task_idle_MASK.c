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
struct rq {struct task_struct* idle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rq*) ; 
 int /*<<< orphan*/  sched_goidle ; 
 int /*<<< orphan*/  FUNC1 (struct rq*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct task_struct *FUNC2(struct rq *rq)
{
	FUNC1(rq, sched_goidle);
	/* adjust the active tasks as we might go into a long sleep */
	FUNC0(rq);
	return rq->idle;
}
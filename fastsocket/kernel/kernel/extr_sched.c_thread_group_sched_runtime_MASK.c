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
typedef  unsigned long long u64 ;
struct task_struct {int dummy; } ;
struct task_cputime {unsigned long long sum_exec_runtime; } ;
struct rq {int dummy; } ;

/* Variables and functions */
 unsigned long long FUNC0 (struct task_struct*,struct rq*) ; 
 struct rq* FUNC1 (struct task_struct*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct rq*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,struct task_cputime*) ; 

unsigned long long FUNC4(struct task_struct *p)
{
	struct task_cputime totals;
	unsigned long flags;
	struct rq *rq;
	u64 ns;

	rq = FUNC1(p, &flags);
	FUNC3(p, &totals);
	ns = totals.sum_exec_runtime + FUNC0(p, rq);
	FUNC2(rq, &flags);

	return ns;
}
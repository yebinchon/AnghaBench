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
struct rq {int dummy; } ;

/* Variables and functions */
 unsigned long long FUNC0 (struct task_struct*,struct rq*) ; 
 struct rq* FUNC1 (struct task_struct*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct rq*,unsigned long*) ; 

unsigned long long FUNC3(struct task_struct *p)
{
	unsigned long flags;
	struct rq *rq;
	u64 ns = 0;

	rq = FUNC1(p, &flags);
	ns = FUNC0(p, rq);
	FUNC2(rq, &flags);

	return ns;
}
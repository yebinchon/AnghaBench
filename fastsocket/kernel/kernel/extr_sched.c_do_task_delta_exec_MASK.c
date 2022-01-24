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
typedef  scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ exec_start; } ;
struct task_struct {TYPE_1__ se; } ;
struct rq {scalar_t__ clock; } ;
typedef  scalar_t__ s64 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rq*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct rq*) ; 

__attribute__((used)) static u64 FUNC2(struct task_struct *p, struct rq *rq)
{
	u64 ns = 0;

	if (FUNC0(rq, p)) {
		FUNC1(rq);
		ns = rq->clock - p->se.exec_start;
		if ((s64)ns < 0)
			ns = 0;
	}

	return ns;
}
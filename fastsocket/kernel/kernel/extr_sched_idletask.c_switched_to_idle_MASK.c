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
struct rq {int /*<<< orphan*/  curr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rq*,struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct rq *rq, struct task_struct *p,
			     int running)
{
	/* Can this actually happen?? */
	if (running)
		FUNC1(rq->curr);
	else
		FUNC0(rq, p, 0);
}
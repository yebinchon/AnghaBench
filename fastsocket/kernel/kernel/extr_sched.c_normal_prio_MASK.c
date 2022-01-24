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
struct task_struct {int rt_priority; } ;

/* Variables and functions */
 int MAX_RT_PRIO ; 
 int FUNC0 (struct task_struct*) ; 
 scalar_t__ FUNC1 (struct task_struct*) ; 

__attribute__((used)) static inline int FUNC2(struct task_struct *p)
{
	int prio;

	if (FUNC1(p))
		prio = MAX_RT_PRIO-1 - p->rt_priority;
	else
		prio = FUNC0(p);
	return prio;
}
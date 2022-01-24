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
struct task_struct {int /*<<< orphan*/  start_time; } ;

/* Variables and functions */
 int FUNC0 (struct task_struct*,int /*<<< orphan*/ *,struct task_struct*) ; 

__attribute__((used)) static inline int FUNC1(void *p1, void *p2)
{
	struct task_struct *t1 = p1;
	struct task_struct *t2 = p2;
	return FUNC0(t1, &t2->start_time, t2);
}
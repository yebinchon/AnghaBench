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
struct work_struct {int /*<<< orphan*/  data; } ;
struct cpu_workqueue_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long WORK_STRUCT_FLAG_MASK ; 
 unsigned long WORK_STRUCT_PENDING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long* FUNC2 (struct work_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct work_struct*) ; 

__attribute__((used)) static inline void FUNC4(struct work_struct *work,
				struct cpu_workqueue_struct *cwq)
{
	unsigned long new;

	FUNC0(!FUNC3(work));

	new = (unsigned long) cwq | (1UL << WORK_STRUCT_PENDING);
	new |= WORK_STRUCT_FLAG_MASK & *FUNC2(work);
	FUNC1(&work->data, new);
}
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
struct work_struct {int dummy; } ;
struct cpu_workqueue_struct {int /*<<< orphan*/  lock; int /*<<< orphan*/  worklist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpu_workqueue_struct*,struct work_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct cpu_workqueue_struct *cwq,
			 struct work_struct *work)
{
	unsigned long flags;

	FUNC1(&cwq->lock, flags);
	FUNC0(cwq, work, &cwq->worklist);
	FUNC2(&cwq->lock, flags);
}
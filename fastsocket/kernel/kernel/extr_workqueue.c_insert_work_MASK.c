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
struct work_struct {int /*<<< orphan*/  entry; } ;
struct list_head {int dummy; } ;
struct cpu_workqueue_struct {int /*<<< orphan*/  more_work; int /*<<< orphan*/  thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct work_struct*,struct cpu_workqueue_struct*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct work_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct cpu_workqueue_struct *cwq,
			struct work_struct *work, struct list_head *head)
{
	FUNC3(cwq->thread, work);

	FUNC1(work, cwq);
	/*
	 * Ensure that we get the right work->data if we see the
	 * result of list_add() below, see try_to_grab_pending().
	 */
	FUNC2();
	FUNC0(&work->entry, head);
	FUNC4(&cwq->more_work);
}
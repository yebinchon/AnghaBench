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
struct wq_barrier {int /*<<< orphan*/  work; int /*<<< orphan*/  done; } ;
struct list_head {int dummy; } ;
struct cpu_workqueue_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WORK_STRUCT_PENDING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cpu_workqueue_struct*,int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wq_barrier_func ; 

__attribute__((used)) static void FUNC5(struct cpu_workqueue_struct *cwq,
			struct wq_barrier *barr, struct list_head *head)
{
	FUNC0(&barr->work, wq_barrier_func);
	FUNC1(WORK_STRUCT_PENDING, FUNC4(&barr->work));

	FUNC2(&barr->done);

	FUNC3(cwq, &barr->work, head);
}
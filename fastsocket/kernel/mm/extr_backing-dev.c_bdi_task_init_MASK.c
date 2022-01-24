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
struct task_struct {int flags; } ;
struct bdi_writeback {int /*<<< orphan*/  list; } ;
struct backing_dev_info {int /*<<< orphan*/  wb_lock; int /*<<< orphan*/  wb_list; } ;

/* Variables and functions */
 int PF_FLUSHER ; 
 int PF_SWAPWRITE ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct backing_dev_info *bdi,
			  struct bdi_writeback *wb)
{
	struct task_struct *tsk = current;

	FUNC3(&bdi->wb_lock);
	FUNC0(&wb->list, &bdi->wb_list);
	FUNC4(&bdi->wb_lock);

	tsk->flags |= PF_FLUSHER | PF_SWAPWRITE;
	FUNC1();

	/*
	 * Our parent may run at a different priority, just set us to normal
	 */
	FUNC2(tsk, 0);
}
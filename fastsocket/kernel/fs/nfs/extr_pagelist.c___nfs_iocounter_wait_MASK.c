#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wait_queue_head_t ;
struct nfs_io_counter {int /*<<< orphan*/  flags; int /*<<< orphan*/  io_count; } ;
struct TYPE_3__ {int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFS_IO_INPROGRESS ; 
 int /*<<< orphan*/  TASK_KILLABLE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ q ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct nfs_io_counter *c)
{
	wait_queue_head_t *wq = FUNC2(&c->flags, NFS_IO_INPROGRESS);
	FUNC0(q, &c->flags, NFS_IO_INPROGRESS);
	int ret = 0;

	do {
		FUNC5(wq, &q.wait, TASK_KILLABLE);
		FUNC6(NFS_IO_INPROGRESS, &c->flags);
		if (FUNC1(&c->io_count) == 0)
			break;
		ret = FUNC4(&c->flags);
	} while (FUNC1(&c->io_count) != 0);
	FUNC3(wq, &q.wait);
	return ret;
}
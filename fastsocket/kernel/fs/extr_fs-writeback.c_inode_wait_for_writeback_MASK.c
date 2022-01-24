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
typedef  int /*<<< orphan*/  wait_queue_head_t ;
struct inode {int i_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int I_SYNC ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  __I_SYNC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inode_lock ; 
 int /*<<< orphan*/  inode_wait ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wq ; 

__attribute__((used)) static void FUNC5(struct inode *inode)
{
	FUNC0(wq, &inode->i_state, __I_SYNC);
	wait_queue_head_t *wqh;

	wqh = FUNC2(&inode->i_state, __I_SYNC);
	do {
		FUNC4(&inode_lock);
		FUNC1(wqh, &wq, inode_wait, TASK_UNINTERRUPTIBLE);
		FUNC3(&inode_lock);
	} while (inode->i_state & I_SYNC);
}
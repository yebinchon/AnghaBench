#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_data_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(handle_t *handle, struct inode *inode,
				 int nblocks)
{
	int ret;

	/*
	 * Drop i_data_sem to avoid deadlock with ext4_get_blocks At this
	 * moment, get_block can be called only for blocks inside i_size since
	 * page cache has been already dropped and writes are blocked by
	 * i_mutex. So we can safely drop the i_data_sem here.
	 */
	FUNC0(FUNC2(inode) == NULL);
	FUNC7(2, "restarting handle %p\n", handle);
	FUNC8(&FUNC1(inode)->i_data_sem);
	ret = FUNC6(handle, FUNC3(inode));
	FUNC4(&FUNC1(inode)->i_data_sem);
	FUNC5(inode);

	return ret;
}
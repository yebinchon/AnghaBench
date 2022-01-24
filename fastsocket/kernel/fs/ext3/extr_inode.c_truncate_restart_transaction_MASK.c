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
struct TYPE_2__ {int /*<<< orphan*/  truncate_mutex; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(handle_t *handle, struct inode *inode)
{
	int ret;

	FUNC3(2, "restarting handle %p\n", handle);
	/*
	 * Drop truncate_mutex to avoid deadlock with ext3_get_blocks_handle
	 * At this moment, get_block can be called only for blocks inside
	 * i_size since page cache has been already dropped and writes are
	 * blocked by i_mutex. So we can safely drop the truncate_mutex.
	 */
	FUNC5(&FUNC0(inode)->truncate_mutex);
	ret = FUNC2(handle, FUNC1(inode));
	FUNC4(&FUNC0(inode)->truncate_mutex);
	return ret;
}
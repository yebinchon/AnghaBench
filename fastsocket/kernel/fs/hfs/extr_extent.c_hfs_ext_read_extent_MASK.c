#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct hfs_find_data {int dummy; } ;
struct TYPE_4__ {scalar_t__ cached_blocks; scalar_t__ cached_start; } ;
struct TYPE_3__ {int /*<<< orphan*/  ext_tree; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hfs_find_data*,struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct hfs_find_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct hfs_find_data*) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, u16 block)
{
	struct hfs_find_data fd;
	int res;

	if (block >= FUNC0(inode)->cached_start &&
	    block < FUNC0(inode)->cached_start + FUNC0(inode)->cached_blocks)
		return 0;

	FUNC4(FUNC1(inode->i_sb)->ext_tree, &fd);
	res = FUNC2(&fd, inode, block);
	FUNC3(&fd);
	return res;
}
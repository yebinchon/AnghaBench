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
struct inode {int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_alloc_sem; TYPE_1__* i_op; struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* truncate_range ) (struct inode*,scalar_t__,scalar_t__) ;} ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct address_space*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct inode *inode, loff_t lstart, loff_t lend)
{
	struct address_space *mapping = inode->i_mapping;
	loff_t holebegin = FUNC3(lstart, PAGE_SIZE);
	loff_t holelen = 1 + lend - holebegin;

	/*
	 * If the underlying filesystem is not going to provide
	 * a way to truncate a range of blocks (punch a hole) -
	 * we should return failure right now.
	 */
	if (!inode->i_op->truncate_range)
		return -ENOSYS;

	FUNC1(&inode->i_mutex);
	FUNC0(&inode->i_alloc_sem);
	FUNC5(mapping, holebegin, holelen, 1);
	inode->i_op->truncate_range(inode, lstart, lend);
	/* unmap again to remove racily COWed private pages */
	FUNC5(mapping, holebegin, holelen, 1);
	FUNC6(&inode->i_alloc_sem);
	FUNC2(&inode->i_mutex);

	return 0;
}
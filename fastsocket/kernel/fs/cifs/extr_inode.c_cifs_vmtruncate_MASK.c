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
struct inode {TYPE_1__* i_op; int /*<<< orphan*/  i_lock; int /*<<< orphan*/  i_size; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* truncate ) (struct inode*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, loff_t offset)
{
	loff_t oldsize;
	int err;

	FUNC2(&inode->i_lock);
	err = FUNC1(inode, offset);
	if (err) {
		FUNC3(&inode->i_lock);
		goto out;
	}

	oldsize = inode->i_size;
	FUNC0(inode, offset);
	FUNC3(&inode->i_lock);
	FUNC5(inode, oldsize, offset);
	if (inode->i_op->truncate)
		inode->i_op->truncate(inode);
out:
	return err;
}
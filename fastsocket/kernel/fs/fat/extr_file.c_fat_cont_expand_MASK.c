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
struct inode {int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; scalar_t__ i_size; struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct address_space*,scalar_t__,scalar_t__) ; 
 int FUNC2 (struct address_space*,scalar_t__,scalar_t__) ; 
 int FUNC3 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int FUNC5 (struct address_space*) ; 
 int FUNC6 (struct inode*,int) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, loff_t size)
{
	struct address_space *mapping = inode->i_mapping;
	loff_t start = inode->i_size, count = size - inode->i_size;
	int err;

	err = FUNC3(inode, size);
	if (err)
		goto out;

	inode->i_ctime = inode->i_mtime = CURRENT_TIME_SEC;
	FUNC4(inode);
	if (FUNC0(inode)) {
		int err2;

		/*
		 * Opencode syncing since we don't have a file open to use
		 * standard fsync path.
		 */
		err = FUNC2(mapping, start,
					       start + count - 1);
		err2 = FUNC5(mapping);
		if (!err)
			err = err2;
		err2 = FUNC6(inode, 1);
		if (!err)
			err = err2;
		if (!err) {
			err =  FUNC1(mapping, start,
						       start + count - 1);
		}
	}
out:
	return err;
}
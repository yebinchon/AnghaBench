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
struct super_block {int dummy; } ;
struct inode {unsigned int i_ino; scalar_t__ i_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct super_block*,int /*<<< orphan*/ *,struct inode*) ; 
 struct inode* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  inode_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct inode *FUNC5(struct super_block *sb)
{
	/*
	 * On a 32bit, non LFS stat() call, glibc will generate an EOVERFLOW
	 * error if st_ino won't fit in target struct field. Use 32bit counter
	 * here to attempt to avoid that.
	 */
	static unsigned int last_ino;
	struct inode *inode;

	FUNC3(&inode_lock);

	inode = FUNC1(sb);
	if (inode) {
		FUNC2(&inode_lock);
		FUNC0(sb, NULL, inode);
		inode->i_ino = ++last_ino;
		inode->i_state = 0;
		FUNC4(&inode_lock);
	}
	return inode;
}
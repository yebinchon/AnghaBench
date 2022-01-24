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
struct inode {int dummy; } ;
struct hlist_head {int dummy; } ;
typedef  unsigned int ino_t ;

/* Variables and functions */
 struct inode* FUNC0 (struct super_block*,struct hlist_head*,unsigned int) ; 
 int FUNC1 (struct super_block*,unsigned int) ; 
 struct hlist_head* inode_hashtable ; 
 int /*<<< orphan*/  inode_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

ino_t FUNC4(struct super_block *sb, ino_t max_reserved)
{
	/*
	 * On a 32bit, non LFS stat() call, glibc will generate an EOVERFLOW
	 * error if st_ino won't fit in target struct field. Use 32bit counter
	 * here to attempt to avoid that.
	 */
	static unsigned int counter;
	struct inode *inode;
	struct hlist_head *head;
	ino_t res;

	FUNC2(&inode_lock);
	do {
		if (counter <= max_reserved)
			counter = max_reserved + 1;
		res = counter++;
		head = inode_hashtable + FUNC1(sb, res);
		inode = FUNC0(sb, head, res);
	} while (inode != NULL);
	FUNC3(&inode_lock);

	return res;
}
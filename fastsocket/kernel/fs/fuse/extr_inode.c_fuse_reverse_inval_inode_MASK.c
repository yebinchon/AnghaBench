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
typedef  int /*<<< orphan*/  u64 ;
struct super_block {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mapping; } ;
typedef  int pgoff_t ;
typedef  int loff_t ;

/* Variables and functions */
 int ENOENT ; 
 int PAGE_CACHE_SHIFT ; 
 int /*<<< orphan*/  fuse_inode_eq ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 

int FUNC4(struct super_block *sb, u64 nodeid,
			     loff_t offset, loff_t len)
{
	struct inode *inode;
	pgoff_t pg_start;
	pgoff_t pg_end;

	inode = FUNC1(sb, nodeid, fuse_inode_eq, &nodeid);
	if (!inode)
		return -ENOENT;

	FUNC0(inode);
	if (offset >= 0) {
		pg_start = offset >> PAGE_CACHE_SHIFT;
		if (len <= 0)
			pg_end = -1;
		else
			pg_end = (offset + len - 1) >> PAGE_CACHE_SHIFT;
		FUNC2(inode->i_mapping,
					      pg_start, pg_end);
	}
	FUNC3(inode);
	return 0;
}
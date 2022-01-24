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
struct ocfs2_xattr_bucket {int bu_blocks; struct inode* bu_inode; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int OCFS2_XATTR_MAX_BLOCKS_PER_BUCKET ; 
 struct ocfs2_xattr_bucket* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ocfs2_xattr_bucket *FUNC3(struct inode *inode)
{
	struct ocfs2_xattr_bucket *bucket;
	int blks = FUNC2(inode->i_sb);

	FUNC0(blks > OCFS2_XATTR_MAX_BLOCKS_PER_BUCKET);

	bucket = FUNC1(sizeof(struct ocfs2_xattr_bucket), GFP_NOFS);
	if (bucket) {
		bucket->bu_inode = inode;
		bucket->bu_blocks = blks;
	}

	return bucket;
}
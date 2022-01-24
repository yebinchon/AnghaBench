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
struct super_block {int s_blocksize_bits; } ;
struct inode {int i_size; struct super_block* i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT4_FEATURE_COMPAT_DIR_INDEX ; 
 scalar_t__ FUNC0 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT4_INODE_INDEX ; 
 scalar_t__ FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct inode *inode)
{
	struct super_block *sb = inode->i_sb;

	if (FUNC0(inode->i_sb,
		     EXT4_FEATURE_COMPAT_DIR_INDEX) &&
	    ((FUNC1(inode, EXT4_INODE_INDEX)) ||
	     ((inode->i_size >> sb->s_blocksize_bits) == 1)))
		return 1;

	return 0;
}
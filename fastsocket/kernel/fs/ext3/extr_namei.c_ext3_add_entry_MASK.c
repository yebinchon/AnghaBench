#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct super_block {unsigned int s_blocksize; int s_blocksize_bits; } ;
struct inode {int i_size; struct super_block* i_sb; } ;
struct ext3_dir_entry_2 {int /*<<< orphan*/  rec_len; scalar_t__ inode; } ;
struct TYPE_5__ {int /*<<< orphan*/  len; } ;
struct dentry {TYPE_2__ d_name; TYPE_1__* d_parent; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_6__ {int /*<<< orphan*/  i_flags; } ;
struct TYPE_4__ {struct inode* d_inode; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSPC ; 
 int ERR_BAD_DX_DIR ; 
 int /*<<< orphan*/  EXT3_FEATURE_COMPAT_DIR_INDEX ; 
 scalar_t__ FUNC0 (struct super_block*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  EXT3_INDEX_FL ; 
 int FUNC2 (int /*<<< orphan*/ *,struct dentry*,struct inode*,struct ext3_dir_entry_2*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 struct buffer_head* FUNC4 (int /*<<< orphan*/ *,struct inode*,int*,int*) ; 
 struct buffer_head* FUNC5 (int /*<<< orphan*/ *,struct inode*,int,int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 
 scalar_t__ FUNC9 (struct inode*) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct dentry*,struct inode*,struct buffer_head*) ; 

__attribute__((used)) static int FUNC11 (handle_t *handle, struct dentry *dentry,
	struct inode *inode)
{
	struct inode *dir = dentry->d_parent->d_inode;
	unsigned long offset;
	struct buffer_head * bh;
	struct ext3_dir_entry_2 *de;
	struct super_block * sb;
	int	retval;
	int	dx_fallback=0;
	unsigned blocksize;
	u32 block, blocks;

	sb = dir->i_sb;
	blocksize = sb->s_blocksize;
	if (!dentry->d_name.len)
		return -EINVAL;
	if (FUNC9(dir)) {
		retval = FUNC6(handle, dentry, inode);
		if (!retval || (retval != ERR_BAD_DX_DIR))
			return retval;
		FUNC1(dir)->i_flags &= ~EXT3_INDEX_FL;
		dx_fallback++;
		FUNC7(handle, dir);
	}
	blocks = dir->i_size >> sb->s_blocksize_bits;
	for (block = 0, offset = 0; block < blocks; block++) {
		bh = FUNC5(handle, dir, block, 0, &retval);
		if(!bh)
			return retval;
		retval = FUNC2(handle, dentry, inode, NULL, bh);
		if (retval != -ENOSPC)
			return retval;

		if (blocks == 1 && !dx_fallback &&
		    FUNC0(sb, EXT3_FEATURE_COMPAT_DIR_INDEX))
			return FUNC10(handle, dentry, inode, bh);
		FUNC3(bh);
	}
	bh = FUNC4(handle, dir, &block, &retval);
	if (!bh)
		return retval;
	de = (struct ext3_dir_entry_2 *) bh->b_data;
	de->inode = 0;
	de->rec_len = FUNC8(blocksize);
	return FUNC2(handle, dentry, inode, de, bh);
}
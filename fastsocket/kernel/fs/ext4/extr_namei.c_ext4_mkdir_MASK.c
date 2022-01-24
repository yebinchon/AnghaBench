#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct inode {unsigned int i_size; int i_nlink; TYPE_1__* i_sb; int /*<<< orphan*/  i_ino; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; } ;
struct ext4_dir_entry_2 {int name_len; int /*<<< orphan*/  name; void* rec_len; void* inode; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  struct inode handle_t ;
struct TYPE_7__ {unsigned int i_disksize; } ;
struct TYPE_6__ {unsigned int s_blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int EMLINK ; 
 int ENOSPC ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_4__* FUNC4 (struct inode*) ; 
 scalar_t__ EXT4_INDEX_EXTRA_TRANS_BLOCKS ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 scalar_t__ FUNC7 (struct inode*) ; 
 int FUNC8 (struct inode*) ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 void* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct dentry*,struct inode*) ; 
 int FUNC13 (struct inode*,struct dentry*,struct inode*) ; 
 struct buffer_head* FUNC14 (struct inode*,struct inode*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  ext4_dir_inode_operations ; 
 int /*<<< orphan*/  ext4_dir_operations ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,struct inode*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*,struct buffer_head*) ; 
 struct inode* FUNC19 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*,struct inode*) ; 
 struct inode* FUNC22 (struct inode*,struct inode*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ext4_dir_entry_2* FUNC23 (struct ext4_dir_entry_2*,unsigned int) ; 
 void* FUNC24 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*,struct ext4_dir_entry_2*,int) ; 
 scalar_t__ FUNC26 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC27 (struct inode*) ; 
 int /*<<< orphan*/  FUNC28 (struct inode*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC30 (struct inode*) ; 

__attribute__((used)) static int FUNC31(struct inode *dir, struct dentry *dentry, int mode)
{
	handle_t *handle;
	struct inode *inode;
	struct buffer_head *dir_block;
	struct ext4_dir_entry_2 *de;
	unsigned int blocksize = dir->i_sb->s_blocksize;
	int err, retries = 0;

	if (FUNC2(dir))
		return -EMLINK;

retry:
	handle = FUNC19(dir, FUNC1(dir->i_sb) +
					EXT4_INDEX_EXTRA_TRANS_BLOCKS + 3 +
					FUNC5(dir->i_sb));
	if (FUNC7(handle))
		return FUNC8(handle);

	if (FUNC6(dir))
		FUNC16(handle);

	inode = FUNC22(handle, dir, S_IFDIR | mode,
			       &dentry->d_name, 0);
	err = FUNC8(inode);
	if (FUNC7(inode))
		goto out_stop;

	inode->i_op = &ext4_dir_inode_operations;
	inode->i_fop = &ext4_dir_operations;
	inode->i_size = FUNC4(inode)->i_disksize = inode->i_sb->s_blocksize;
	dir_block = FUNC14(handle, inode, 0, 1, &err);
	if (!dir_block)
		goto out_clear_inode;
	FUNC0(dir_block, "get_write_access");
	FUNC18(handle, dir_block);
	de = (struct ext4_dir_entry_2 *) dir_block->b_data;
	de->inode = FUNC11(inode->i_ino);
	de->name_len = 1;
	de->rec_len = FUNC24(FUNC3(de->name_len),
					   blocksize);
	FUNC29(de->name, ".");
	FUNC25(dir->i_sb, de, S_IFDIR);
	de = FUNC23(de, blocksize);
	de->inode = FUNC11(dir->i_ino);
	de->rec_len = FUNC24(blocksize - FUNC3(1),
					   blocksize);
	de->name_len = 2;
	FUNC29(de->name, "..");
	FUNC25(dir->i_sb, de, S_IFDIR);
	inode->i_nlink = 2;
	FUNC0(dir_block, "call ext4_handle_dirty_metadata");
	FUNC15(handle, inode, dir_block);
	FUNC9(dir_block);
	FUNC21(handle, inode);
	err = FUNC13(handle, dentry, inode);
	if (err) {
out_clear_inode:
		FUNC10(inode);
		FUNC30(inode);
		FUNC21(handle, inode);
		FUNC28(inode);
		goto out_stop;
	}
	FUNC17(handle, dir);
	FUNC27(dir);
	FUNC21(handle, dir);
	FUNC12(dentry, inode);
	FUNC30(inode);
out_stop:
	FUNC20(handle);
	if (err == -ENOSPC && FUNC26(dir->i_sb, &retries))
		goto retry;
	return err;
}
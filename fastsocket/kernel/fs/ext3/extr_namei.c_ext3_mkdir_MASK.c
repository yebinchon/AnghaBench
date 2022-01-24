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
struct inode {scalar_t__ i_nlink; int h_sync; TYPE_1__* i_sb; int /*<<< orphan*/  i_ino; scalar_t__ i_size; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; } ;
struct ext3_dir_entry_2 {int name_len; int /*<<< orphan*/  name; void* rec_len; void* inode; } ;
struct dentry {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  struct inode handle_t ;
struct TYPE_7__ {scalar_t__ i_disksize; } ;
struct TYPE_6__ {scalar_t__ s_blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int EMLINK ; 
 int ENOSPC ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int) ; 
 TYPE_4__* FUNC3 (struct inode*) ; 
 scalar_t__ EXT3_INDEX_EXTRA_TRANS_BLOCKS ; 
 scalar_t__ EXT3_LINK_MAX ; 
 int FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 int FUNC7 (struct inode*) ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int FUNC12 (struct inode*,struct dentry*,struct inode*) ; 
 struct buffer_head* FUNC13 (struct inode*,struct inode*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  ext3_dir_inode_operations ; 
 int /*<<< orphan*/  ext3_dir_operations ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,struct buffer_head*) ; 
 struct inode* FUNC16 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*,struct inode*) ; 
 struct inode* FUNC19 (struct inode*,struct inode*,int) ; 
 struct ext3_dir_entry_2* FUNC20 (struct ext3_dir_entry_2*) ; 
 void* FUNC21 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*,struct ext3_dir_entry_2*,int) ; 
 scalar_t__ FUNC23 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC24 (struct inode*) ; 
 int /*<<< orphan*/  FUNC25 (struct inode*) ; 
 int /*<<< orphan*/  FUNC26 (struct inode*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC28 (struct inode*) ; 

__attribute__((used)) static int FUNC29(struct inode * dir, struct dentry * dentry, int mode)
{
	handle_t *handle;
	struct inode * inode;
	struct buffer_head * dir_block;
	struct ext3_dir_entry_2 * de;
	int err, retries = 0;

	if (dir->i_nlink >= EXT3_LINK_MAX)
		return -EMLINK;

retry:
	handle = FUNC16(dir, FUNC1(dir->i_sb) +
					EXT3_INDEX_EXTRA_TRANS_BLOCKS + 3 +
					2*FUNC4(dir->i_sb));
	if (FUNC6(handle))
		return FUNC7(handle);

	if (FUNC5(dir))
		handle->h_sync = 1;

	inode = FUNC19 (handle, dir, S_IFDIR | mode);
	err = FUNC7(inode);
	if (FUNC6(inode))
		goto out_stop;

	inode->i_op = &ext3_dir_inode_operations;
	inode->i_fop = &ext3_dir_operations;
	inode->i_size = FUNC3(inode)->i_disksize = inode->i_sb->s_blocksize;
	dir_block = FUNC13 (handle, inode, 0, 1, &err);
	if (!dir_block) {
		FUNC11(inode); /* is this nlink == 0? */
		FUNC28(inode);
		FUNC18(handle, inode);
		FUNC26 (inode);
		goto out_stop;
	}
	FUNC0(dir_block, "get_write_access");
	FUNC15(handle, dir_block);
	de = (struct ext3_dir_entry_2 *) dir_block->b_data;
	de->inode = FUNC9(inode->i_ino);
	de->name_len = 1;
	de->rec_len = FUNC21(FUNC2(de->name_len));
	FUNC27 (de->name, ".");
	FUNC22(dir->i_sb, de, S_IFDIR);
	de = FUNC20(de);
	de->inode = FUNC9(dir->i_ino);
	de->rec_len = FUNC21(inode->i_sb->s_blocksize -
					FUNC2(1));
	de->name_len = 2;
	FUNC27 (de->name, "..");
	FUNC22(dir->i_sb, de, S_IFDIR);
	inode->i_nlink = 2;
	FUNC0(dir_block, "call ext3_journal_dirty_metadata");
	FUNC14(handle, dir_block);
	FUNC8 (dir_block);
	FUNC18(handle, inode);
	err = FUNC12 (handle, dentry, inode);
	if (err) {
		inode->i_nlink = 0;
		FUNC28(inode);
		FUNC18(handle, inode);
		FUNC26 (inode);
		goto out_stop;
	}
	FUNC25(dir);
	FUNC24(dir);
	FUNC18(handle, dir);
	FUNC10(dentry, inode);
	FUNC28(inode);
out_stop:
	FUNC17(handle);
	if (err == -ENOSPC && FUNC23(dir->i_sb, &retries))
		goto retry;
	return err;
}
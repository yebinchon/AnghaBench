#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct list_blocks_struct {int dummy; } ;
struct inode {scalar_t__ i_blocks; int i_ino; int i_nlink; TYPE_2__* i_sb; int /*<<< orphan*/  i_mode; } ;
struct ext4_inode_info {scalar_t__* i_data; int /*<<< orphan*/  i_data_sem; } ;
typedef  int /*<<< orphan*/  lb ;
typedef  struct inode handle_t ;
typedef  scalar_t__ ext4_lblk_t ;
typedef  int __u32 ;
typedef  scalar_t__ __le32 ;
struct TYPE_7__ {int s_blocksize; TYPE_1__* s_root; } ;
struct TYPE_6__ {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int FUNC0 (TYPE_2__*) ; 
 size_t EXT4_DIND_BLOCK ; 
 int /*<<< orphan*/  EXT4_FEATURE_INCOMPAT_EXTENTS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct ext4_inode_info* FUNC2 (struct inode*) ; 
 int EXT4_INDEX_EXTRA_TRANS_BLOCKS ; 
 size_t EXT4_IND_BLOCK ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  EXT4_INODE_EXTENTS ; 
 int FUNC4 (TYPE_2__*) ; 
 int EXT4_NDIR_BLOCKS ; 
 int /*<<< orphan*/  EXT4_STATE_EXT_MIGRATE ; 
 size_t EXT4_TIND_BLOCK ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  S_IFREG ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct inode*,struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,struct inode*) ; 
 scalar_t__ FUNC11 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int) ; 
 struct inode* FUNC13 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 struct inode* FUNC15 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct inode*,struct inode*,struct list_blocks_struct*) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*) ; 
 int /*<<< orphan*/  FUNC22 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct inode*) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (struct list_blocks_struct*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC26 (struct inode*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int FUNC28 (struct inode*,struct inode*,int /*<<< orphan*/ ,scalar_t__*,struct list_blocks_struct*) ; 
 int FUNC29 (struct inode*,struct inode*,int /*<<< orphan*/ ,scalar_t__,struct list_blocks_struct*) ; 
 int FUNC30 (struct inode*,struct inode*,int /*<<< orphan*/ ,scalar_t__*,struct list_blocks_struct*) ; 
 int FUNC31 (struct inode*,struct inode*,int /*<<< orphan*/ ,scalar_t__*,struct list_blocks_struct*) ; 

int FUNC32(struct inode *inode)
{
	handle_t *handle;
	int retval = 0, i;
	__le32 *i_data;
	ext4_lblk_t blk_count = 0;
	struct ext4_inode_info *ei;
	struct inode *tmp_inode = NULL;
	struct list_blocks_struct lb;
	unsigned long max_entries;
	__u32 goal;

	/*
	 * If the filesystem does not support extents, or the inode
	 * already is extent-based, error out.
	 */
	if (!FUNC1(inode->i_sb,
				       EXT4_FEATURE_INCOMPAT_EXTENTS) ||
	    (FUNC18(inode, EXT4_INODE_EXTENTS)))
		return -EINVAL;

	if (FUNC7(inode->i_mode) && inode->i_blocks == 0)
		/*
		 * don't migrate fast symlink
		 */
		return retval;

	handle = FUNC13(inode,
					FUNC0(inode->i_sb) +
					EXT4_INDEX_EXTRA_TRANS_BLOCKS + 3 +
					FUNC4(inode->i_sb)
					+ 1);
	if (FUNC5(handle)) {
		retval = FUNC6(handle);
		return retval;
	}
	goal = (((inode->i_ino - 1) / FUNC3(inode->i_sb)) *
		FUNC3(inode->i_sb)) + 1;
	tmp_inode = FUNC15(handle, inode->i_sb->s_root->d_inode,
				   S_IFREG, 0, goal);
	if (FUNC5(tmp_inode)) {
		retval = -ENOMEM;
		FUNC14(handle);
		return retval;
	}
	FUNC22(tmp_inode, FUNC21(inode));
	/*
	 * We don't want the inode to be reclaimed
	 * if we got interrupted in between. We have
	 * this tmp inode carrying reference to the
	 * data blocks of the original file. We set
	 * the i_nlink to zero at the last stage after
	 * switching the original file to extent format
	 */
	tmp_inode->i_nlink = 1;

	FUNC10(handle, tmp_inode);
	FUNC16(handle, tmp_inode);
	FUNC14(handle);

	/*
	 * start with one credit accounted for
	 * superblock modification.
	 *
	 * For the tmp_inode we already have commited the
	 * trascation that created the inode. Later as and
	 * when we add extents we extent the journal
	 */
	/*
	 * Even though we take i_mutex we can still cause block
	 * allocation via mmap write to holes. If we have allocated
	 * new blocks we fail migrate.  New block allocation will
	 * clear EXT4_STATE_EXT_MIGRATE flag.  The flag is updated
	 * with i_data_sem held to prevent racing with block
	 * allocation.
	 */
	FUNC8((&FUNC2(inode)->i_data_sem));
	FUNC17(inode, EXT4_STATE_EXT_MIGRATE);
	FUNC27((&FUNC2(inode)->i_data_sem));

	handle = FUNC13(inode, 1);

	ei = FUNC2(inode);
	i_data = ei->i_data;
	FUNC25(&lb, 0, sizeof(lb));

	/* 32 bit block address 4 bytes */
	max_entries = inode->i_sb->s_blocksize >> 2;
	for (i = 0; i < EXT4_NDIR_BLOCKS; i++, blk_count++) {
		if (i_data[i]) {
			retval = FUNC29(handle, tmp_inode,
						FUNC24(i_data[i]),
						blk_count, &lb);
			if (retval)
				goto err_out;
		}
	}
	if (i_data[EXT4_IND_BLOCK]) {
		retval = FUNC30(handle, tmp_inode,
					FUNC24(i_data[EXT4_IND_BLOCK]),
					&blk_count, &lb);
			if (retval)
				goto err_out;
	} else
		blk_count +=  max_entries;
	if (i_data[EXT4_DIND_BLOCK]) {
		retval = FUNC28(handle, tmp_inode,
					FUNC24(i_data[EXT4_DIND_BLOCK]),
					&blk_count, &lb);
			if (retval)
				goto err_out;
	} else
		blk_count += max_entries * max_entries;
	if (i_data[EXT4_TIND_BLOCK]) {
		retval = FUNC31(handle, tmp_inode,
					FUNC24(i_data[EXT4_TIND_BLOCK]),
					&blk_count, &lb);
			if (retval)
				goto err_out;
	}
	/*
	 * Build the last extent
	 */
	retval = FUNC19(handle, tmp_inode, &lb);
err_out:
	if (retval)
		/*
		 * Failure case delete the extent information with the
		 * tmp_inode
		 */
		FUNC20(handle, tmp_inode);
	else {
		retval = FUNC9(handle, inode, tmp_inode);
		if (retval)
			/*
			 * if we fail to swap inode data free the extent
			 * details of the tmp inode
			 */
			FUNC20(handle, tmp_inode);
	}

	/* We mark the tmp_inode dirty via ext4_ext_tree_init. */
	if (FUNC11(handle, 1) != 0)
		FUNC12(handle, 1);

	/*
	 * Mark the tmp_inode as of size zero
	 */
	FUNC22(tmp_inode, 0);

	/*
	 * set the  i_blocks count to zero
	 * so that the ext4_delete_inode does the
	 * right job
	 *
	 * We don't need to take the i_lock because
	 * the inode is not visible to user space.
	 */
	tmp_inode->i_blocks = 0;

	/* Reset the extent details */
	FUNC10(handle, tmp_inode);

	/*
	 * Set the i_nlink to zero so that
	 * generic_drop_inode really deletes the
	 * inode
	 */
	tmp_inode->i_nlink = 0;

	FUNC14(handle);
	FUNC26(tmp_inode);
	FUNC23(tmp_inode);

	return retval;
}
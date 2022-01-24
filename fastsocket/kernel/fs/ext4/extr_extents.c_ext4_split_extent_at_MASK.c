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
struct inode {int /*<<< orphan*/  i_ino; } ;
struct ext4_extent {void* ee_len; int /*<<< orphan*/  ee_block; } ;
struct ext4_ext_path {struct ext4_extent* p_ext; } ;
typedef  int /*<<< orphan*/  orig_ex ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  scalar_t__ ext4_lblk_t ;
typedef  scalar_t__ ext4_fsblk_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOSPC ; 
 int EXT4_EXT_MARK_UNINIT1 ; 
 int EXT4_EXT_MARK_UNINIT2 ; 
 int EXT4_EXT_MAY_ZEROOUT ; 
 int EXT4_GET_BLOCKS_DIO ; 
 void* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 unsigned int FUNC5 (struct ext4_extent*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*,struct ext4_extent*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC8 (struct ext4_extent*) ; 
 scalar_t__ FUNC9 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC11 (struct ext4_extent*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,struct ext4_ext_path*,struct ext4_extent*) ; 
 int FUNC13 (struct inode*,struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,unsigned long long) ; 
 unsigned int FUNC15 (struct inode*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct ext4_extent*,struct ext4_extent*,int) ; 

__attribute__((used)) static int FUNC18(handle_t *handle,
			     struct inode *inode,
			     struct ext4_ext_path *path,
			     ext4_lblk_t split,
			     int split_flag,
			     int flags)
{
	ext4_fsblk_t newblock;
	ext4_lblk_t ee_block;
	struct ext4_extent *ex, newex, orig_ex;
	struct ext4_extent *ex2 = NULL;
	unsigned int ee_len, depth;
	int err = 0;

	FUNC14("ext4_split_extents_at: inode %lu, logical"
		"block %llu\n", inode->i_ino, (unsigned long long)split);

	FUNC10(inode, path);

	depth = FUNC15(inode);
	ex = path[depth].p_ext;
	ee_block = FUNC16(ex->ee_block);
	ee_len = FUNC5(ex);
	newblock = split - ee_block + FUNC9(ex);

	FUNC0(split < ee_block || split >= (ee_block + ee_len));

	err = FUNC4(handle, inode, path + depth);
	if (err)
		goto out;

	if (split == ee_block) {
		/*
		 * case b: block @split is the block that the extent begins with
		 * then we just change the state of the extent, and splitting
		 * is not needed.
		 */
		if (split_flag & EXT4_EXT_MARK_UNINIT2)
			FUNC8(ex);
		else
			FUNC7(ex);

		if (!(flags & EXT4_GET_BLOCKS_DIO))
			FUNC12(inode, path, ex);

		err = FUNC3(handle, inode, path + depth);
		goto out;
	}

	/* case a */
	FUNC17(&orig_ex, ex, sizeof(orig_ex));
	ex->ee_len = FUNC1(split - ee_block);
	if (split_flag & EXT4_EXT_MARK_UNINIT1)
		FUNC8(ex);

	/*
	 * path may lead to new leaf, not to original leaf any more
	 * after ext4_ext_insert_extent() returns,
	 */
	err = FUNC3(handle, inode, path + depth);
	if (err)
		goto fix_extent_len;

	ex2 = &newex;
	ex2->ee_block = FUNC2(split);
	ex2->ee_len   = FUNC1(ee_len - (split - ee_block));
	FUNC11(ex2, newblock);
	if (split_flag & EXT4_EXT_MARK_UNINIT2)
		FUNC8(ex2);

	err = FUNC6(handle, inode, path, &newex, flags);
	if (err == -ENOSPC && (EXT4_EXT_MAY_ZEROOUT & split_flag)) {
		err = FUNC13(inode, &orig_ex);
		if (err)
			goto fix_extent_len;
		/* update the extent length and mark as initialized */
		ex->ee_len = FUNC1(ee_len);
		FUNC12(inode, path, ex);
		err = FUNC3(handle, inode, path + depth);
		goto out;
	} else if (err)
		goto fix_extent_len;

out:
	FUNC10(inode, path);
	return err;

fix_extent_len:
	ex->ee_len = orig_ex.ee_len;
	FUNC3(handle, inode, path + depth);
	return err;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct super_block {int s_blocksize; } ;
struct inode {int i_size; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; scalar_t__ i_nlink; struct super_block* i_sb; struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int ext4_lblk_t ;
struct TYPE_2__ {int i_disksize; int /*<<< orphan*/  i_data_sem; } ;

/* Variables and functions */
 int FUNC0 (struct super_block*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 scalar_t__ EXT_MAX_BLOCKS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct address_space*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int FUNC9 (struct inode*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct inode*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct inode*) ; 
 int FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

void FUNC19(struct inode *inode)
{
	struct address_space *mapping = inode->i_mapping;
	struct super_block *sb = inode->i_sb;
	ext4_lblk_t last_block;
	handle_t *handle;
	int err = 0;

	/*
	 * finish any pending end_io work so we won't run the risk of
	 * converting any truncated blocks to initialized later
	 */
	FUNC17(inode);

	/*
	 * probably first extent we're gonna free will be last in block
	 */
	err = FUNC16(inode);
	handle = FUNC11(inode, err);
	if (FUNC2(handle))
		return;

	if (inode->i_size & (sb->s_blocksize - 1))
		FUNC5(handle, mapping, inode->i_size);

	if (FUNC14(handle, inode))
		goto out_stop;

	FUNC4(&FUNC1(inode)->i_data_sem);
	FUNC8(inode);

	FUNC7(inode);

	/*
	 * TODO: optimization is possible here.
	 * Probably we need not scan at all,
	 * because page truncation is enough.
	 */

	/* we have to know where to truncate from in crash case */
	FUNC1(inode)->i_disksize = inode->i_size;
	FUNC13(handle, inode);

	last_block = (inode->i_size + sb->s_blocksize - 1)
			>> FUNC0(sb);
	err = FUNC9(inode, last_block, EXT_MAX_BLOCKS - 1);

	/* In a multi-transaction truncate, we only make the final
	 * transaction synchronous.
	 */
	if (FUNC3(inode))
		FUNC10(handle);

out_stop:
	FUNC18(&FUNC1(inode)->i_data_sem);
	/*
	 * If this was a simple ftruncate() and the file will remain alive,
	 * then we need to clear up the orphan record which we created above.
	 * However, if this was a real unlink then we were called by
	 * ext4_delete_inode(), and we allow that function to clean up the
	 * orphan info for us.
	 */
	if (inode->i_nlink)
		FUNC15(handle, inode);

	inode->i_mtime = inode->i_ctime = FUNC6(inode);
	FUNC13(handle, inode);
	FUNC12(handle);
}
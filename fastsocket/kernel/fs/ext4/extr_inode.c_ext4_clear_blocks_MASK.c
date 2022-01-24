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
typedef  scalar_t__ u32 ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mode; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int /*<<< orphan*/  ext4_fsblk_t ;
typedef  scalar_t__ __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int EXT4_FREE_BLOCKS_METADATA ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,struct inode*,struct buffer_head*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 struct buffer_head* FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,struct inode*) ; 

__attribute__((used)) static void FUNC13(handle_t *handle, struct inode *inode,
			      struct buffer_head *bh,
			      ext4_fsblk_t block_to_free,
			      unsigned long count, __le32 *first,
			      __le32 *last)
{
	__le32 *p;
	int is_metadata = 0;
	int flags = 0;

	if (FUNC1(inode->i_mode) || FUNC2(inode->i_mode)) {
		flags |= EXT4_FREE_BLOCKS_METADATA;
		is_metadata = 1;
	}


	if (FUNC12(handle, inode)) {
		if (bh) {
			FUNC0(bh, "call ext4_handle_dirty_metadata");
			FUNC6(handle, inode, bh);
		}
		FUNC8(handle, inode);
		FUNC9(handle, inode,
					    FUNC3(inode));
		if (bh) {
			FUNC0(bh, "retaking write access");
			FUNC7(handle, bh);
		}
	}

	/*
	 * Any buffers which are on the journal will be in memory. We
	 * find them on the hash table so jbd2_journal_revoke() will
	 * run jbd2_journal_forget() on them.  We've already detached
	 * each block from the file, so bforget() in
	 * jbd2_journal_forget() should be safe.
	 *
	 * AKPM: turn on bforget in jbd2_journal_forget()!!!
	 */
	for (p = first; p < last; p++) {
		u32 nr = FUNC10(*p);
		if (nr) {
			struct buffer_head *tbh;

			*p = 0;
			tbh = FUNC11(inode->i_sb, nr);
			FUNC4(handle, is_metadata, inode, tbh, nr);
		}
	}

	FUNC5(handle, inode, block_to_free, count, flags);
}
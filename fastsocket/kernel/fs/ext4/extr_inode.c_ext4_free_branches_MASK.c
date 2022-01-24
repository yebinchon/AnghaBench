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
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int /*<<< orphan*/  b_blocknr; scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int /*<<< orphan*/  ext4_fsblk_t ;
typedef  scalar_t__ __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT4_FREE_BLOCKS_METADATA ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,struct inode*,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 struct buffer_head* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,struct inode*) ; 

__attribute__((used)) static void FUNC15(handle_t *handle, struct inode *inode,
			       struct buffer_head *parent_bh,
			       __le32 *first, __le32 *last, int depth)
{
	ext4_fsblk_t nr;
	__le32 *p;

	if (FUNC8(handle))
		return;

	if (depth--) {
		struct buffer_head *bh;
		int addr_per_block = FUNC1(inode->i_sb);
		p = last;
		while (--p >= first) {
			nr = FUNC12(*p);
			if (!nr)
				continue;		/* A hole */

			/* Go read the buffer for the next level down */
			bh = FUNC13(inode->i_sb, nr);

			/*
			 * A read failure? Report error and clear slot
			 * (should be rare).
			 */
			if (!bh) {
				FUNC3(inode->i_sb,
					   "Read failure, inode=%lu, block=%llu",
					   inode->i_ino, nr);
				continue;
			}

			/* This zaps the entire block.  Bottom up. */
			FUNC0(bh, "free child branches");
			FUNC15(handle, inode, bh,
					(__le32 *) bh->b_data,
					(__le32 *) bh->b_data + addr_per_block,
					depth);

			/*
			 * We've probably journalled the indirect block several
			 * times during the truncate.  But it's no longer
			 * needed and we now drop it from the transaction via
			 * jbd2_journal_revoke().
			 *
			 * That's easy if it's exclusively part of this
			 * transaction.  But if it's part of the committing
			 * transaction then jbd2_journal_forget() will simply
			 * brelse() it.  That means that if the underlying
			 * block is reallocated in ext4_get_block(),
			 * unmap_underlying_metadata() will find this block
			 * and will try to get rid of it.  damn, damn.
			 *
			 * If this block has already been committed to the
			 * journal, a revoke record will be written.  And
			 * revoke records must be emitted *before* clearing
			 * this block's bit in the bitmaps.
			 */
			FUNC4(handle, 1, inode, bh, bh->b_blocknr);

			/*
			 * Everything below this this pointer has been
			 * released.  Now let this top-of-subtree go.
			 *
			 * We want the freeing of this indirect block to be
			 * atomic in the journal with the updating of the
			 * bitmap block which owns it.  So make some room in
			 * the journal.
			 *
			 * We zero the parent pointer *after* freeing its
			 * pointee in the bitmaps, so if extend_transaction()
			 * for some reason fails to put the bitmap changes and
			 * the release into the same transaction, recovery
			 * will merely complain about releasing a free block,
			 * rather than leaking blocks.
			 */
			if (FUNC8(handle))
				return;
			if (FUNC14(handle, inode)) {
				FUNC10(handle, inode);
				FUNC11(handle, inode,
					    FUNC2(inode));
			}

			FUNC5(handle, inode, nr, 1,
					 EXT4_FREE_BLOCKS_METADATA);

			if (parent_bh) {
				/*
				 * The block which we have just freed is
				 * pointed to by an indirect block: journal it
				 */
				FUNC0(parent_bh, "get_write_access");
				if (!FUNC9(handle,
								   parent_bh)){
					*p = 0;
					FUNC0(parent_bh,
					"call ext4_handle_dirty_metadata");
					FUNC7(handle,
								   inode,
								   parent_bh);
				}
			}
		}
	} else {
		/* We have reached the bottom of the tree. */
		FUNC0(parent_bh, "free data blocks");
		FUNC6(handle, inode, parent_bh, first, last);
	}
}
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
struct super_block {int dummy; } ;
struct reiserfs_transaction_handle {int /*<<< orphan*/  t_trans_id; struct super_block* t_super; } ;
struct reiserfs_super_block {int dummy; } ;
struct reiserfs_bitmap_info {int /*<<< orphan*/  free_count; } ;
struct inode {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
typedef  int /*<<< orphan*/  b_blocknr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct reiserfs_bitmap_info* FUNC2 (struct super_block*) ; 
 struct buffer_head* FUNC3 (struct super_block*) ; 
 struct reiserfs_super_block* FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  free_block ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,int /*<<< orphan*/ ,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (struct reiserfs_transaction_handle*,struct super_block*,struct buffer_head*) ; 
 unsigned int FUNC8 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*,struct buffer_head*,int) ; 
 struct buffer_head* FUNC11 (struct super_block*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct reiserfs_super_block*) ; 
 int /*<<< orphan*/  FUNC14 (struct reiserfs_super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,int) ; 

__attribute__((used)) static void FUNC16(struct reiserfs_transaction_handle *th,
				 struct inode *inode, b_blocknr_t block,
				 int for_unformatted)
{
	struct super_block *s = th->t_super;
	struct reiserfs_super_block *rs;
	struct buffer_head *sbh, *bmbh;
	struct reiserfs_bitmap_info *apbi;
	unsigned int nr, offset;

	FUNC0(!th->t_trans_id);

	FUNC1(s, free_block);

	rs = FUNC4(s);
	sbh = FUNC3(s);
	apbi = FUNC2(s);

	FUNC6(s, block, &nr, &offset);

	if (nr >= FUNC8(s)) {
		FUNC9(s, "vs-4075", "block %lu is out of range",
			       block);
		return;
	}

	bmbh = FUNC11(s, nr);
	if (!bmbh)
		return;

	FUNC10(s, bmbh, 1);

	/* clear bit for the given block in bit map */
	if (!FUNC12(offset, bmbh->b_data)) {
		FUNC9(s, "vs-4080",
			       "block %lu: bit already cleared", block);
	}
	apbi[nr].free_count++;
	FUNC7(th, s, bmbh);
	FUNC5(bmbh);

	FUNC10(s, sbh, 1);
	/* update super block */
	FUNC14(rs, FUNC13(rs) + 1);

	FUNC7(th, s, sbh);
	if (for_unformatted)
		FUNC15(inode, 1);
}
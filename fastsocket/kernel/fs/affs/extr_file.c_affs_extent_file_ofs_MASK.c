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
struct super_block {int dummy; } ;
struct inode {int i_ino; int i_size; struct super_block* i_sb; } ;
struct buffer_head {unsigned long b_state; int b_blocknr; } ;
struct TYPE_6__ {void* next; void* size; void* sequence; void* key; void* ptype; } ;
struct TYPE_5__ {int mmu_private; } ;
struct TYPE_4__ {int s_data_blksize; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct buffer_head*) ; 
 TYPE_3__* FUNC1 (struct buffer_head*) ; 
 TYPE_2__* FUNC2 (struct inode*) ; 
 TYPE_1__* FUNC3 (struct super_block*) ; 
 unsigned long BH_New ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct buffer_head*) ; 
 int FUNC6 (struct buffer_head*) ; 
 int T_DATA ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*,int) ; 
 struct buffer_head* FUNC8 (struct inode*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*,struct buffer_head*) ; 
 struct buffer_head* FUNC11 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct super_block*,char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (void**,int) ; 
 int FUNC14 (void*) ; 
 void* FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (struct buffer_head*,struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC18 (int,int) ; 
 int /*<<< orphan*/  FUNC19 (char*,int,int) ; 

__attribute__((used)) static int
FUNC20(struct inode *inode, u32 newsize)
{
	struct super_block *sb = inode->i_sb;
	struct buffer_head *bh, *prev_bh;
	u32 bidx, boff;
	u32 size, bsize;
	u32 tmp;

	FUNC19("AFFS: extent_file(%u, %d)\n", (u32)inode->i_ino, newsize);
	bsize = FUNC3(sb)->s_data_blksize;
	bh = NULL;
	size = FUNC2(inode)->mmu_private;
	bidx = size / bsize;
	boff = size % bsize;
	if (boff) {
		bh = FUNC8(inode, bidx, 0);
		if (FUNC5(bh))
			return FUNC6(bh);
		tmp = FUNC18(bsize - boff, newsize - size);
		FUNC4(boff + tmp > bsize || tmp > bsize);
		FUNC17(FUNC0(bh) + boff, 0, tmp);
		FUNC13(&FUNC1(bh)->size, tmp);
		FUNC10(sb, bh);
		FUNC16(bh, inode);
		size += tmp;
		bidx++;
	} else if (bidx) {
		bh = FUNC8(inode, bidx - 1, 0);
		if (FUNC5(bh))
			return FUNC6(bh);
	}

	while (size < newsize) {
		prev_bh = bh;
		bh = FUNC11(inode, bidx);
		if (FUNC5(bh))
			goto out;
		tmp = FUNC18(bsize, newsize - size);
		FUNC4(tmp > bsize);
		FUNC1(bh)->ptype = FUNC15(T_DATA);
		FUNC1(bh)->key = FUNC15(inode->i_ino);
		FUNC1(bh)->sequence = FUNC15(bidx);
		FUNC1(bh)->size = FUNC15(tmp);
		FUNC10(sb, bh);
		bh->b_state &= ~(1UL << BH_New);
		FUNC16(bh, inode);
		if (prev_bh) {
			u32 tmp = FUNC14(FUNC1(prev_bh)->next);
			if (tmp)
				FUNC12(sb, "extent_file_ofs", "next block already set for %d (%d)", bidx, tmp);
			FUNC1(prev_bh)->next = FUNC15(bh->b_blocknr);
			FUNC7(prev_bh, bh->b_blocknr - tmp);
			FUNC16(prev_bh, inode);
			FUNC9(prev_bh);
		}
		size += bsize;
		bidx++;
	}
	FUNC9(bh);
	inode->i_size = FUNC2(inode)->mmu_private = newsize;
	return 0;

out:
	inode->i_size = FUNC2(inode)->mmu_private = newsize;
	return FUNC6(bh);
}
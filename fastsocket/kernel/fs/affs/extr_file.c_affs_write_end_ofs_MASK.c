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
struct page {unsigned int index; } ;
struct inode {int i_ino; int i_size; struct super_block* i_sb; } ;
struct file {int dummy; } ;
struct buffer_head {unsigned long b_state; int b_blocknr; } ;
struct address_space {struct inode* host; } ;
typedef  int loff_t ;
struct TYPE_6__ {void* size; void* next; void* sequence; void* key; void* ptype; } ;
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
 unsigned int PAGE_CACHE_SHIFT ; 
 int PAGE_CACHE_SIZE ; 
 int FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int T_DATA ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*,int) ; 
 struct buffer_head* FUNC9 (struct inode*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct super_block*,struct buffer_head*) ; 
 struct buffer_head* FUNC12 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct super_block*,char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (void**,int) ; 
 int FUNC15 (void*) ; 
 scalar_t__ FUNC16 (struct buffer_head*) ; 
 void* FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (struct buffer_head*,struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,char*,int) ; 
 int FUNC20 (int,unsigned int) ; 
 char* FUNC21 (struct page*) ; 
 int /*<<< orphan*/  FUNC22 (struct page*) ; 
 int /*<<< orphan*/  FUNC23 (char*,int,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC24 (struct page*) ; 

__attribute__((used)) static int FUNC25(struct file *file, struct address_space *mapping,
				loff_t pos, unsigned len, unsigned copied,
				struct page *page, void *fsdata)
{
	struct inode *inode = mapping->host;
	struct super_block *sb = inode->i_sb;
	struct buffer_head *bh, *prev_bh;
	char *data;
	u32 bidx, boff, bsize;
	unsigned from, to;
	u32 tmp;
	int written;

	from = pos & (PAGE_CACHE_SIZE - 1);
	to = pos + len;
	/*
	 * XXX: not sure if this can handle short copies (len < copied), but
	 * we don't have to, because the page should always be uptodate here,
	 * due to write_begin.
	 */

	FUNC23("AFFS: write_begin(%u, %llu, %llu)\n", (u32)inode->i_ino, (unsigned long long)pos, (unsigned long long)pos + len);
	bsize = FUNC3(sb)->s_data_blksize;
	data = FUNC21(page);

	bh = NULL;
	written = 0;
	tmp = (page->index << PAGE_CACHE_SHIFT) + from;
	bidx = tmp / bsize;
	boff = tmp % bsize;
	if (boff) {
		bh = FUNC9(inode, bidx, 0);
		if (FUNC5(bh))
			return FUNC6(bh);
		tmp = FUNC20(bsize - boff, to - from);
		FUNC4(boff + tmp > bsize || tmp > bsize);
		FUNC19(FUNC0(bh) + boff, data + from, tmp);
		FUNC14(&FUNC1(bh)->size, tmp);
		FUNC11(sb, bh);
		FUNC18(bh, inode);
		written += tmp;
		from += tmp;
		bidx++;
	} else if (bidx) {
		bh = FUNC9(inode, bidx - 1, 0);
		if (FUNC5(bh))
			return FUNC6(bh);
	}
	while (from + bsize <= to) {
		prev_bh = bh;
		bh = FUNC12(inode, bidx);
		if (FUNC5(bh))
			goto out;
		FUNC19(FUNC0(bh), data + from, bsize);
		if (FUNC16(bh)) {
			FUNC1(bh)->ptype = FUNC17(T_DATA);
			FUNC1(bh)->key = FUNC17(inode->i_ino);
			FUNC1(bh)->sequence = FUNC17(bidx);
			FUNC1(bh)->size = FUNC17(bsize);
			FUNC1(bh)->next = 0;
			bh->b_state &= ~(1UL << BH_New);
			if (prev_bh) {
				u32 tmp = FUNC15(FUNC1(prev_bh)->next);
				if (tmp)
					FUNC13(sb, "commit_write_ofs", "next block already set for %d (%d)", bidx, tmp);
				FUNC1(prev_bh)->next = FUNC17(bh->b_blocknr);
				FUNC8(prev_bh, bh->b_blocknr - tmp);
				FUNC18(prev_bh, inode);
			}
		}
		FUNC10(prev_bh);
		FUNC11(sb, bh);
		FUNC18(bh, inode);
		written += bsize;
		from += bsize;
		bidx++;
	}
	if (from < to) {
		prev_bh = bh;
		bh = FUNC9(inode, bidx, 1);
		if (FUNC5(bh))
			goto out;
		tmp = FUNC20(bsize, to - from);
		FUNC4(tmp > bsize);
		FUNC19(FUNC0(bh), data + from, tmp);
		if (FUNC16(bh)) {
			FUNC1(bh)->ptype = FUNC17(T_DATA);
			FUNC1(bh)->key = FUNC17(inode->i_ino);
			FUNC1(bh)->sequence = FUNC17(bidx);
			FUNC1(bh)->size = FUNC17(tmp);
			FUNC1(bh)->next = 0;
			bh->b_state &= ~(1UL << BH_New);
			if (prev_bh) {
				u32 tmp = FUNC15(FUNC1(prev_bh)->next);
				if (tmp)
					FUNC13(sb, "commit_write_ofs", "next block already set for %d (%d)", bidx, tmp);
				FUNC1(prev_bh)->next = FUNC17(bh->b_blocknr);
				FUNC8(prev_bh, bh->b_blocknr - tmp);
				FUNC18(prev_bh, inode);
			}
		} else if (FUNC15(FUNC1(bh)->size) < tmp)
			FUNC1(bh)->size = FUNC17(tmp);
		FUNC10(prev_bh);
		FUNC11(sb, bh);
		FUNC18(bh, inode);
		written += tmp;
		from += tmp;
		bidx++;
	}
	FUNC7(page);

done:
	FUNC10(bh);
	tmp = (page->index << PAGE_CACHE_SHIFT) + from;
	if (tmp > inode->i_size)
		inode->i_size = FUNC2(inode)->mmu_private = tmp;

	FUNC24(page);
	FUNC22(page);

	return written;

out:
	bh = prev_bh;
	if (!written)
		written = FUNC6(bh);
	goto done;
}
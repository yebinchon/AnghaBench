#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  void u8 ;
typedef  unsigned int u32 ;
struct page {scalar_t__ index; TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_size; int /*<<< orphan*/  b_state; struct buffer_head* b_this_page; scalar_t__ b_blocknr; struct page* b_page; } ;
typedef  scalar_t__ s64 ;
struct TYPE_10__ {unsigned int block_size; } ;
struct TYPE_11__ {TYPE_3__ index; } ;
struct TYPE_12__ {scalar_t__ initialized_size; TYPE_4__ itype; TYPE_2__* vol; int /*<<< orphan*/  size_lock; } ;
typedef  TYPE_5__ ntfs_inode ;
typedef  scalar_t__ loff_t ;
struct TYPE_9__ {int /*<<< orphan*/  sb; } ;
struct TYPE_8__ {struct inode* host; } ;
typedef  int /*<<< orphan*/  NTFS_RECORD ;

/* Variables and functions */
 int /*<<< orphan*/  BH_Uptodate_Lock ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  KM_BIO_SRC_IRQ ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 TYPE_5__* FUNC3 (struct inode*) ; 
 scalar_t__ PAGE_CACHE_SHIFT ; 
 unsigned int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct buffer_head*) ; 
 int FUNC11 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 
 scalar_t__ FUNC16 (struct inode*) ; 
 void* FUNC17 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (unsigned long) ; 
 int /*<<< orphan*/  FUNC21 (unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 struct buffer_head* FUNC24 (struct page*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC28 (struct buffer_head*) ; 
 scalar_t__ FUNC29 (int) ; 
 int /*<<< orphan*/  FUNC30 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC31 (struct page*) ; 

__attribute__((used)) static void FUNC32(struct buffer_head *bh, int uptodate)
{
	unsigned long flags;
	struct buffer_head *first, *tmp;
	struct page *page;
	struct inode *vi;
	ntfs_inode *ni;
	int page_uptodate = 1;

	page = bh->b_page;
	vi = page->mapping->host;
	ni = FUNC3(vi);

	if (FUNC19(uptodate)) {
		loff_t i_size;
		s64 file_ofs, init_size;

		FUNC28(bh);

		file_ofs = ((s64)page->index << PAGE_CACHE_SHIFT) +
				FUNC7(bh);
		FUNC26(&ni->size_lock, flags);
		init_size = ni->initialized_size;
		i_size = FUNC16(vi);
		FUNC27(&ni->size_lock, flags);
		if (FUNC29(init_size > i_size)) {
			/* Race with shrinking truncate. */
			init_size = i_size;
		}
		/* Check for the current buffer head overflowing. */
		if (FUNC29(file_ofs + bh->b_size > init_size)) {
			int ofs;
			void *kaddr;

			ofs = 0;
			if (file_ofs < init_size)
				ofs = init_size - file_ofs;
			FUNC21(flags);
			kaddr = FUNC17(page, KM_BIO_SRC_IRQ);
			FUNC22(kaddr + FUNC7(bh) + ofs, 0,
					bh->b_size - ofs);
			FUNC15(page);
			FUNC18(kaddr, KM_BIO_SRC_IRQ);
			FUNC20(flags);
		}
	} else {
		FUNC14(bh);
		FUNC5(page);
		FUNC23(ni->vol->sb, "Buffer I/O error, logical block "
				"0x%llx.", (unsigned long long)bh->b_blocknr);
	}
	first = FUNC24(page);
	FUNC21(flags);
	FUNC8(BH_Uptodate_Lock, &first->b_state);
	FUNC13(bh);
	FUNC30(bh);
	tmp = bh;
	do {
		if (!FUNC12(tmp))
			page_uptodate = 0;
		if (FUNC10(tmp)) {
			if (FUNC19(FUNC11(tmp)))
				goto still_busy;
			/* Async buffers must be locked. */
			FUNC0();
		}
		tmp = tmp->b_this_page;
	} while (tmp != bh);
	FUNC9(BH_Uptodate_Lock, &first->b_state);
	FUNC20(flags);
	/*
	 * If none of the buffers had errors then we can set the page uptodate,
	 * but we first have to perform the post read mst fixups, if the
	 * attribute is mst protected, i.e. if NInoMstProteced(ni) is true.
	 * Note we ignore fixup errors as those are detected when
	 * map_mft_record() is called which gives us per record granularity
	 * rather than per page granularity.
	 */
	if (!FUNC2(ni)) {
		if (FUNC19(page_uptodate && !FUNC4(page)))
			FUNC6(page);
	} else {
		u8 *kaddr;
		unsigned int i, recs;
		u32 rec_size;

		rec_size = ni->itype.index.block_size;
		recs = PAGE_CACHE_SIZE / rec_size;
		/* Should have been verified before we got here... */
		FUNC1(!recs);
		FUNC21(flags);
		kaddr = FUNC17(page, KM_BIO_SRC_IRQ);
		for (i = 0; i < recs; i++)
			FUNC25((NTFS_RECORD*)(kaddr +
					i * rec_size), rec_size);
		FUNC18(kaddr, KM_BIO_SRC_IRQ);
		FUNC20(flags);
		FUNC15(page);
		if (FUNC19(page_uptodate && !FUNC4(page)))
			FUNC6(page);
	}
	FUNC31(page);
	return;
still_busy:
	FUNC9(BH_Uptodate_Lock, &first->b_state);
	FUNC20(flags);
	return;
}
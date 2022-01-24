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
struct page {int dummy; } ;
struct metapage {unsigned int logical_size; int count; unsigned long index; scalar_t__ data; scalar_t__ nohomeok; int /*<<< orphan*/  xflag; scalar_t__ flag; struct page* page; } ;
struct inode {int i_blkbits; unsigned long i_size; int /*<<< orphan*/  i_sb; struct address_space* i_mapping; int /*<<< orphan*/  i_ino; } ;
struct address_space {int dummy; } ;
struct TYPE_6__ {TYPE_1__* direct_inode; } ;
struct TYPE_5__ {int /*<<< orphan*/  pagealloc; } ;
struct TYPE_4__ {struct address_space* i_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMIT_PAGE ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  META_discard ; 
 int PAGE_CACHE_SHIFT ; 
 unsigned long PAGE_CACHE_SIZE ; 
 unsigned long PSIZE ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 struct metapage* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (struct metapage*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct metapage*) ; 
 struct page* FUNC10 (struct address_space*,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct page*,struct metapage*) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,struct metapage*,...) ; 
 int /*<<< orphan*/  FUNC15 (struct metapage*) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int /*<<< orphan*/ ,unsigned long) ; 
 TYPE_2__ mpStat ; 
 scalar_t__ FUNC18 (struct page*) ; 
 struct metapage* FUNC19 (struct page*,unsigned long) ; 
 struct page* FUNC20 (struct address_space*,unsigned long,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct page*) ; 

struct metapage *FUNC24(struct inode *inode, unsigned long lblock,
				unsigned int size, int absolute,
				unsigned long new)
{
	int l2BlocksPerPage;
	int l2bsize;
	struct address_space *mapping;
	struct metapage *mp = NULL;
	struct page *page;
	unsigned long page_index;
	unsigned long page_offset;

	FUNC14("__get_metapage: ino = %ld, lblock = 0x%lx, abs=%d",
		 inode->i_ino, lblock, absolute);

	l2bsize = inode->i_blkbits;
	l2BlocksPerPage = PAGE_CACHE_SHIFT - l2bsize;
	page_index = lblock >> l2BlocksPerPage;
	page_offset = (lblock - (page_index << l2BlocksPerPage)) << l2bsize;
	if ((page_offset + size) > PAGE_CACHE_SIZE) {
		FUNC12("MetaData crosses page boundary!!");
		FUNC12("lblock = %lx, size  = %d", lblock, size);
		FUNC8();
		return NULL;
	}
	if (absolute)
		mapping = FUNC2(inode->i_sb)->direct_inode->i_mapping;
	else {
		/*
		 * If an nfs client tries to read an inode that is larger
		 * than any existing inodes, we may try to read past the
		 * end of the inode map
		 */
		if ((lblock << inode->i_blkbits) >= inode->i_size)
			return NULL;
		mapping = inode->i_mapping;
	}

	if (new && (PSIZE == PAGE_CACHE_SIZE)) {
		page = FUNC10(mapping, page_index);
		if (!page) {
			FUNC12("grab_cache_page failed!");
			return NULL;
		}
		FUNC4(page);
	} else {
		page = FUNC20(mapping, page_index, NULL);
		if (FUNC1(page) || !FUNC3(page)) {
			FUNC12("read_mapping_page failed!");
			return NULL;
		}
		FUNC16(page);
	}

	mp = FUNC19(page, page_offset);
	if (mp) {
		if (mp->logical_size != size) {
			FUNC13(inode->i_sb,
				  "__get_metapage: mp->logical_size != size");
			FUNC12("logical_size = %d, size = %d",
				mp->logical_size, size);
			FUNC8();
			goto unlock;
		}
		mp->count++;
		FUNC15(mp);
		if (FUNC21(META_discard, &mp->flag)) {
			if (!new) {
				FUNC13(inode->i_sb,
					  "__get_metapage: using a "
					  "discarded metapage");
				FUNC7(mp);
				goto unlock;
			}
			FUNC6(META_discard, &mp->flag);
		}
	} else {
		FUNC0(mpStat.pagealloc);
		mp = FUNC5(GFP_NOFS);
		mp->page = page;
		mp->flag = 0;
		mp->xflag = COMMIT_PAGE;
		mp->count = 1;
		mp->nohomeok = 0;
		mp->logical_size = size;
		mp->data = FUNC18(page) + page_offset;
		mp->index = lblock;
		if (FUNC22(FUNC11(page, mp))) {
			FUNC9(mp);
			goto unlock;
		}
		FUNC15(mp);
	}

	if (new) {
		FUNC14("zeroing mp = 0x%p", mp);
		FUNC17(mp->data, 0, PSIZE);
	}

	FUNC23(page);
	FUNC14("__get_metapage: returning = 0x%p data = 0x%p", mp, mp->data);
	return mp;

unlock:
	FUNC23(page);
	return NULL;
}
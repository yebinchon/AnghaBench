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
struct ubifs_data_node {int /*<<< orphan*/  size; } ;
struct page {unsigned int index; int /*<<< orphan*/  flags; TYPE_1__* mapping; } ;
struct inode {int /*<<< orphan*/  i_ino; } ;
typedef  int loff_t ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int UBIFS_BLOCKS_PER_PAGE ; 
 unsigned int UBIFS_BLOCKS_PER_PAGE_SHIFT ; 
 int UBIFS_BLOCK_SHIFT ; 
 int UBIFS_BLOCK_SIZE ; 
 int /*<<< orphan*/  UBIFS_MAX_DATA_NODE_SZ ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct ubifs_data_node*) ; 
 struct ubifs_data_node* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (void*,int /*<<< orphan*/ ,int) ; 
 int FUNC16 (struct inode*,void*,unsigned int,struct ubifs_data_node*) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (char*,unsigned int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC19(struct page *page)
{
	void *addr;
	int err = 0, i;
	unsigned int block, beyond;
	struct ubifs_data_node *dn;
	struct inode *inode = page->mapping->host;
	loff_t i_size = FUNC9(inode);

	FUNC7("ino %lu, pg %lu, i_size %lld, flags %#lx",
		inode->i_ino, page->index, i_size, page->flags);
	FUNC17(!FUNC2(page));
	FUNC17(!FUNC3(page));

	addr = FUNC12(page);

	block = page->index << UBIFS_BLOCKS_PER_PAGE_SHIFT;
	beyond = (i_size + UBIFS_BLOCK_SIZE - 1) >> UBIFS_BLOCK_SHIFT;
	if (block >= beyond) {
		/* Reading beyond inode */
		FUNC4(page);
		FUNC15(addr, 0, PAGE_CACHE_SIZE);
		goto out;
	}

	dn = FUNC11(UBIFS_MAX_DATA_NODE_SZ, GFP_NOFS);
	if (!dn) {
		err = -ENOMEM;
		goto error;
	}

	i = 0;
	while (1) {
		int ret;

		if (block >= beyond) {
			/* Reading beyond inode */
			err = -ENOENT;
			FUNC15(addr, 0, UBIFS_BLOCK_SIZE);
		} else {
			ret = FUNC16(inode, addr, block, dn);
			if (ret) {
				err = ret;
				if (err != -ENOENT)
					break;
			} else if (block + 1 == beyond) {
				int dlen = FUNC14(dn->size);
				int ilen = i_size & (UBIFS_BLOCK_SIZE - 1);

				if (ilen && ilen < dlen)
					FUNC15(addr + ilen, 0, dlen - ilen);
			}
		}
		if (++i >= UBIFS_BLOCKS_PER_PAGE)
			break;
		block += 1;
		addr += UBIFS_BLOCK_SIZE;
	}
	if (err) {
		if (err == -ENOENT) {
			/* Not found, so it must be a hole */
			FUNC4(page);
			FUNC7("hole");
			goto out_free;
		}
		FUNC18("cannot read page %lu of inode %lu, error %d",
			  page->index, inode->i_ino, err);
		goto error;
	}

out_free:
	FUNC10(dn);
out:
	FUNC6(page);
	FUNC0(page);
	FUNC8(page);
	FUNC13(page);
	return 0;

error:
	FUNC10(dn);
	FUNC1(page);
	FUNC5(page);
	FUNC8(page);
	FUNC13(page);
	return err;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u32 ;
struct super_block {int dummy; } ;
struct page {int index; TYPE_1__* mapping; } ;
struct inode {scalar_t__ i_ino; struct super_block* i_sb; } ;
struct file {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_4__ {unsigned int s_data_blksize; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct buffer_head*) ; 
 TYPE_2__* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 int PAGE_CACHE_SHIFT ; 
 unsigned int PAGE_CACHE_SIZE ; 
 int FUNC4 (struct buffer_head*) ; 
 struct buffer_head* FUNC5 (struct inode*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (char*,unsigned int,unsigned int) ; 
 unsigned int FUNC11 (unsigned int,unsigned int) ; 
 char* FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (char*,unsigned int,int,unsigned int,unsigned int) ; 

__attribute__((used)) static int
FUNC14(struct file *file, struct page *page, unsigned from, unsigned to)
{
	struct inode *inode = page->mapping->host;
	struct super_block *sb = inode->i_sb;
	struct buffer_head *bh;
	char *data;
	u32 bidx, boff, bsize;
	u32 tmp;

	FUNC13("AFFS: read_page(%u, %ld, %d, %d)\n", (u32)inode->i_ino, page->index, from, to);
	FUNC2(from > to || to > PAGE_CACHE_SIZE);
	FUNC8(page);
	data = FUNC12(page);
	bsize = FUNC1(sb)->s_data_blksize;
	tmp = (page->index << PAGE_CACHE_SHIFT) + from;
	bidx = tmp / bsize;
	boff = tmp % bsize;

	while (from < to) {
		bh = FUNC5(inode, bidx, 0);
		if (FUNC3(bh))
			return FUNC4(bh);
		tmp = FUNC11(bsize - boff, to - from);
		FUNC2(from + tmp > to || tmp > bsize);
		FUNC10(data + from, FUNC0(bh) + boff, tmp);
		FUNC6(bh);
		bidx++;
		from += tmp;
		boff = 0;
	}
	FUNC7(page);
	FUNC9(page);
	return 0;
}
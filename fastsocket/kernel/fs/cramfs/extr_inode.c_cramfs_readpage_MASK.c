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
typedef  int u32 ;
struct super_block {int dummy; } ;
struct page {int index; TYPE_1__* mapping; } ;
struct inode {int i_size; struct super_block* i_sb; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int FUNC1 (struct inode*) ; 
 int PAGE_CACHE_SHIFT ; 
 int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct super_block*,int,int) ; 
 int FUNC5 (void*,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 void* FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  read_mutex ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 

__attribute__((used)) static int FUNC15(struct file *file, struct page * page)
{
	struct inode *inode = page->mapping->host;
	u32 maxblock;
	int bytes_filled;
	void *pgdata;

	maxblock = (inode->i_size + PAGE_CACHE_SIZE - 1) >> PAGE_CACHE_SHIFT;
	bytes_filled = 0;
	pgdata = FUNC7(page);

	if (page->index < maxblock) {
		struct super_block *sb = inode->i_sb;
		u32 blkptr_offset = FUNC1(inode) + page->index*4;
		u32 start_offset, compr_len;

		start_offset = FUNC1(inode) + maxblock*4;
		FUNC10(&read_mutex);
		if (page->index)
			start_offset = *(u32 *) FUNC4(sb, blkptr_offset-4,
				4);
		compr_len = (*(u32 *) FUNC4(sb, blkptr_offset, 4) -
			start_offset);
		FUNC11(&read_mutex);

		if (compr_len == 0)
			; /* hole */
		else if (FUNC13(compr_len > (PAGE_CACHE_SIZE << 1))) {
			FUNC12("cramfs: bad compressed blocksize %u\n",
				compr_len);
			goto err;
		} else {
			FUNC10(&read_mutex);
			bytes_filled = FUNC5(pgdata,
				 PAGE_CACHE_SIZE,
				 FUNC4(sb, start_offset, compr_len),
				 compr_len);
			FUNC11(&read_mutex);
			if (FUNC13(bytes_filled < 0))
				goto err;
		}
	}

	FUNC9(pgdata + bytes_filled, 0, PAGE_CACHE_SIZE - bytes_filled);
	FUNC6(page);
	FUNC8(page);
	FUNC3(page);
	FUNC14(page);
	return 0;

err:
	FUNC8(page);
	FUNC0(page);
	FUNC2(page);
	FUNC14(page);
	return 0;
}
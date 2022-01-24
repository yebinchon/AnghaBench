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
struct super_block {TYPE_2__* s_bdev; } ;
struct page {int dummy; } ;
struct address_space {TYPE_3__* host; } ;
struct TYPE_6__ {unsigned int i_size; } ;
struct TYPE_5__ {TYPE_1__* bd_inode; } ;
struct TYPE_4__ {struct address_space* i_mapping; } ;

/* Variables and functions */
 int BLKS_PER_BUF ; 
 unsigned int BUFFER_SIZE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int PAGE_CACHE_SHIFT ; 
 int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 unsigned int READ_BUFFERS ; 
 unsigned int* buffer_blocknr ; 
 struct super_block** buffer_dev ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 unsigned int next_buffer ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 void** read_buffers ; 
 struct page* FUNC8 (struct address_space*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 

__attribute__((used)) static void *FUNC10(struct super_block *sb, unsigned int offset, unsigned int len)
{
	struct address_space *mapping = sb->s_bdev->bd_inode->i_mapping;
	struct page *pages[BLKS_PER_BUF];
	unsigned i, blocknr, buffer;
	unsigned long devsize;
	char *data;

	if (!len)
		return NULL;
	blocknr = offset >> PAGE_CACHE_SHIFT;
	offset &= PAGE_CACHE_SIZE - 1;

	/* Check if an existing buffer already has the data.. */
	for (i = 0; i < READ_BUFFERS; i++) {
		unsigned int blk_offset;

		if (buffer_dev[i] != sb)
			continue;
		if (blocknr < buffer_blocknr[i])
			continue;
		blk_offset = (blocknr - buffer_blocknr[i]) << PAGE_CACHE_SHIFT;
		blk_offset += offset;
		if (blk_offset + len > BUFFER_SIZE)
			continue;
		return read_buffers[i] + blk_offset;
	}

	devsize = mapping->host->i_size >> PAGE_CACHE_SHIFT;

	/* Ok, read in BLKS_PER_BUF pages completely first. */
	for (i = 0; i < BLKS_PER_BUF; i++) {
		struct page *page = NULL;

		if (blocknr + i < devsize) {
			page = FUNC8(mapping, blocknr + i,
									NULL);
			/* synchronous error? */
			if (FUNC0(page))
				page = NULL;
		}
		pages[i] = page;
	}

	for (i = 0; i < BLKS_PER_BUF; i++) {
		struct page *page = pages[i];
		if (page) {
			FUNC9(page);
			if (!FUNC2(page)) {
				/* asynchronous error */
				FUNC7(page);
				pages[i] = NULL;
			}
		}
	}

	buffer = next_buffer;
	next_buffer = FUNC1(buffer);
	buffer_blocknr[buffer] = blocknr;
	buffer_dev[buffer] = sb;

	data = read_buffers[buffer];
	for (i = 0; i < BLKS_PER_BUF; i++) {
		struct page *page = pages[i];
		if (page) {
			FUNC5(data, FUNC3(page), PAGE_CACHE_SIZE);
			FUNC4(page);
			FUNC7(page);
		} else
			FUNC6(data, 0, PAGE_CACHE_SIZE);
		data += PAGE_CACHE_SIZE;
	}
	return read_buffers[buffer] + offset;
}
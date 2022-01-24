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
struct scsi_cmnd {int dummy; } ;
struct scatterlist {unsigned int offset; unsigned int length; } ;
struct page {int dummy; } ;
typedef  enum xfer_buf_dir { ____Placeholder_xfer_buf_dir } xfer_buf_dir ;

/* Variables and functions */
 unsigned int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int TO_XFER_BUF ; 
 unsigned char* FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,unsigned int) ; 
 unsigned int FUNC3 (unsigned int,unsigned int) ; 
 struct scatterlist* FUNC4 (struct scsi_cmnd*) ; 
 struct scatterlist* FUNC5 (struct scatterlist*) ; 
 struct page* FUNC6 (struct scatterlist*) ; 

unsigned int FUNC7(unsigned char *buffer,
	unsigned int buflen, struct scsi_cmnd *srb, struct scatterlist **sgptr,
	unsigned int *offset, enum xfer_buf_dir dir)
{
	unsigned int cnt;
	struct scatterlist *sg = *sgptr;

	/* We have to go through the list one entry
	 * at a time.  Each s-g entry contains some number of pages, and
	 * each page has to be kmap()'ed separately.  If the page is already
	 * in kernel-addressable memory then kmap() will return its address.
	 * If the page is not directly accessible -- such as a user buffer
	 * located in high memory -- then kmap() will map it to a temporary
	 * position in the kernel's virtual address space.
	 */

	if (!sg)
		sg = FUNC4(srb);

	/* This loop handles a single s-g list entry, which may
	 * include multiple pages.  Find the initial page structure
	 * and the starting offset within the page, and update
	 * the *offset and **sgptr values for the next loop.
	 */
	cnt = 0;
	while (cnt < buflen && sg) {
		struct page *page = FUNC6(sg) +
				((sg->offset + *offset) >> PAGE_SHIFT);
		unsigned int poff = (sg->offset + *offset) & (PAGE_SIZE-1);
		unsigned int sglen = sg->length - *offset;

		if (sglen > buflen - cnt) {

			/* Transfer ends within this s-g entry */
			sglen = buflen - cnt;
			*offset += sglen;
		} else {

			/* Transfer continues to next s-g entry */
			*offset = 0;
			sg = FUNC5(sg);
		}

		/* Transfer the data for all the pages in this
			* s-g entry.  For each page: call kmap(), do the
			* transfer, and call kunmap() immediately after. */
		while (sglen > 0) {
			unsigned int plen = FUNC3(sglen, (unsigned int)
					PAGE_SIZE - poff);
			unsigned char *ptr = FUNC0(page);

			if (dir == TO_XFER_BUF)
				FUNC2(ptr + poff, buffer + cnt, plen);
			else
				FUNC2(buffer + cnt, ptr + poff, plen);
			FUNC1(page);

			/* Start at the beginning of the next page */
			poff = 0;
			++page;
			cnt += plen;
			sglen -= plen;
		}
	}
	*sgptr = sg;

	/* Return the amount actually transferred */
	return cnt;
}
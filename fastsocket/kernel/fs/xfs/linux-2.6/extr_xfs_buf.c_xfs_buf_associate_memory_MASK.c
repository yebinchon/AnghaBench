#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned long b_offset; int b_page_count; size_t b_count_desired; size_t b_buffer_length; int /*<<< orphan*/  b_flags; int /*<<< orphan*/ * b_pages; void* b_addr; } ;
typedef  TYPE_1__ xfs_buf_t ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 unsigned long PAGE_MASK ; 
 size_t PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  XBF_DONT_BLOCK ; 
 int /*<<< orphan*/  XBF_MAPPED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

int
FUNC4(
	xfs_buf_t		*bp,
	void			*mem,
	size_t			len)
{
	int			rval;
	int			i = 0;
	unsigned long		pageaddr;
	unsigned long		offset;
	size_t			buflen;
	int			page_count;

	pageaddr = (unsigned long)mem & PAGE_MASK;
	offset = (unsigned long)mem - pageaddr;
	buflen = FUNC0(len + offset);
	page_count = buflen >> PAGE_SHIFT;

	/* Free any previous set of page pointers */
	if (bp->b_pages)
		FUNC1(bp);

	bp->b_pages = NULL;
	bp->b_addr = mem;

	rval = FUNC2(bp, page_count, XBF_DONT_BLOCK);
	if (rval)
		return rval;

	bp->b_offset = offset;

	for (i = 0; i < bp->b_page_count; i++) {
		bp->b_pages[i] = FUNC3((void *)pageaddr);
		pageaddr += PAGE_SIZE;
	}

	bp->b_count_desired = len;
	bp->b_buffer_length = buflen;
	bp->b_flags |= XBF_MAPPED;

	return 0;
}
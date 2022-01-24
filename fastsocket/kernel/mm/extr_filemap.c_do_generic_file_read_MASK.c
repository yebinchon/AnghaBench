#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct page {int /*<<< orphan*/ * mapping; } ;
struct inode {int i_blkbits; } ;
struct file_ra_state {int prev_pos; } ;
struct file {struct file_ra_state f_ra; struct address_space* f_mapping; } ;
struct address_space {TYPE_1__* a_ops; struct inode* host; } ;
struct TYPE_8__ {int count; int error; } ;
typedef  TYPE_2__ read_descriptor_t ;
typedef  unsigned long (* read_actor_t ) (TYPE_2__*,struct page*,unsigned long,unsigned long) ;
typedef  unsigned long pgoff_t ;
typedef  int loff_t ;
struct TYPE_7__ {int (* readpage ) (struct file*,struct page*) ;int /*<<< orphan*/  (* is_partially_uptodate ) (struct page*,TYPE_2__*,unsigned long) ;} ;

/* Variables and functions */
 int AOP_TRUNCATED_PAGE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int EEXIST ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_CACHE_MASK ; 
 int PAGE_CACHE_SHIFT ; 
 int PAGE_CACHE_SIZE ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int FUNC3 (struct page*,struct address_space*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct file*) ; 
 struct page* FUNC6 (struct address_space*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int FUNC8 (struct inode*) ; 
 int FUNC9 (struct page*) ; 
 scalar_t__ FUNC10 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 struct page* FUNC12 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC13 (struct address_space*,struct file_ra_state*,struct file*,struct page*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct address_space*,struct file_ra_state*,struct file*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (struct file*,struct file_ra_state*) ; 
 int /*<<< orphan*/  FUNC17 (struct page*,TYPE_2__*,unsigned long) ; 
 int FUNC18 (struct file*,struct page*) ; 
 int /*<<< orphan*/  FUNC19 (struct page*) ; 
 scalar_t__ FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (struct page*) ; 

__attribute__((used)) static void FUNC22(struct file *filp, loff_t *ppos,
		read_descriptor_t *desc, read_actor_t actor)
{
	struct address_space *mapping = filp->f_mapping;
	struct inode *inode = mapping->host;
	struct file_ra_state *ra = &filp->f_ra;
	pgoff_t index;
	pgoff_t last_index;
	pgoff_t prev_index;
	unsigned long offset;      /* offset into pagecache page */
	unsigned int prev_offset;
	int error;

	index = *ppos >> PAGE_CACHE_SHIFT;
	prev_index = ra->prev_pos >> PAGE_CACHE_SHIFT;
	prev_offset = ra->prev_pos & (PAGE_CACHE_SIZE-1);
	last_index = (*ppos + desc->count + PAGE_CACHE_SIZE-1) >> PAGE_CACHE_SHIFT;
	offset = *ppos & ~PAGE_CACHE_MASK;

	for (;;) {
		struct page *page;
		pgoff_t end_index;
		loff_t isize;
		unsigned long nr, ret;

		FUNC4();
find_page:
		page = FUNC6(mapping, index);
		if (!page) {
			FUNC15(mapping,
					ra, filp,
					index, last_index - index);
			page = FUNC6(mapping, index);
			if (FUNC20(page == NULL))
				goto no_cached_page;
		}
		if (FUNC1(page)) {
			FUNC13(mapping,
					ra, filp, page,
					index, last_index - index);
		}
		if (!FUNC2(page)) {
			if (inode->i_blkbits == PAGE_CACHE_SHIFT ||
					!mapping->a_ops->is_partially_uptodate)
				goto page_not_up_to_date;
			if (!FUNC19(page))
				goto page_not_up_to_date;
			/* Did it get truncated before we got the lock? */
			if (!page->mapping)
				goto page_not_up_to_date_locked;
			if (!mapping->a_ops->is_partially_uptodate(page,
								desc, offset))
				goto page_not_up_to_date_locked;
			FUNC21(page);
		}
page_ok:
		/*
		 * i_size must be checked after we know the page is Uptodate.
		 *
		 * Checking i_size after the check allows us to calculate
		 * the correct value for "nr", which means the zero-filled
		 * part of the page is not copied back to userspace (unless
		 * another truncate extends the file - this is desired though).
		 */

		isize = FUNC8(inode);
		end_index = (isize - 1) >> PAGE_CACHE_SHIFT;
		if (FUNC20(!isize || index > end_index)) {
			FUNC14(page);
			goto out;
		}

		/* nr is the maximum number of bytes to copy from this page */
		nr = PAGE_CACHE_SIZE;
		if (index == end_index) {
			nr = ((isize - 1) & ~PAGE_CACHE_MASK) + 1;
			if (nr <= offset) {
				FUNC14(page);
				goto out;
			}
		}
		nr = nr - offset;

		/* If users can be writing to this page using arbitrary
		 * virtual addresses, take care about potential aliasing
		 * before reading the page on the kernel side.
		 */
		if (FUNC10(mapping))
			FUNC7(page);

		/*
		 * When a sequential read accesses a page several times,
		 * only mark it as accessed the first time.
		 */
		if (prev_index != index || offset != prev_offset)
			FUNC11(page);
		prev_index = index;

		/*
		 * Ok, we have the page, and it's up-to-date, so
		 * now we can copy it to user space...
		 *
		 * The actor routine returns how many bytes were actually used..
		 * NOTE! This may not be the same as how much of a user buffer
		 * we filled up (we may be padding etc), so we can only update
		 * "pos" here (the actor routine has to update the user buffer
		 * pointers and the remaining count).
		 */
		ret = actor(desc, page, offset, nr);
		offset += ret;
		index += offset >> PAGE_CACHE_SHIFT;
		offset &= ~PAGE_CACHE_MASK;
		prev_offset = offset;

		FUNC14(page);
		if (ret == nr && desc->count)
			continue;
		goto out;

page_not_up_to_date:
		/* Get exclusive access to the page ... */
		error = FUNC9(page);
		if (FUNC20(error))
			goto readpage_error;

page_not_up_to_date_locked:
		/* Did it get truncated before we got the lock? */
		if (!page->mapping) {
			FUNC21(page);
			FUNC14(page);
			continue;
		}

		/* Did somebody else fill it already? */
		if (FUNC2(page)) {
			FUNC21(page);
			goto page_ok;
		}

readpage:
		/*
		 * A previous I/O error may have been due to temporary
		 * failures, eg. multipath errors.
		 * PG_error will be set again if readpage fails.
		 */
		FUNC0(page);
		/* Start the actual read. The read will unlock the page. */
		error = mapping->a_ops->readpage(filp, page);

		if (FUNC20(error)) {
			if (error == AOP_TRUNCATED_PAGE) {
				FUNC14(page);
				goto find_page;
			}
			goto readpage_error;
		}

		if (!FUNC2(page)) {
			error = FUNC9(page);
			if (FUNC20(error))
				goto readpage_error;
			if (!FUNC2(page)) {
				if (page->mapping == NULL) {
					/*
					 * invalidate_inode_pages got it
					 */
					FUNC21(page);
					FUNC14(page);
					goto find_page;
				}
				FUNC21(page);
				FUNC16(filp, ra);
				error = -EIO;
				goto readpage_error;
			}
			FUNC21(page);
		}

		goto page_ok;

readpage_error:
		/* UHHUH! A synchronous read error occurred. Report it */
		desc->error = error;
		FUNC14(page);
		goto out;

no_cached_page:
		/*
		 * Ok, it wasn't cached, so we need to create a new
		 * page..
		 */
		page = FUNC12(mapping);
		if (!page) {
			desc->error = -ENOMEM;
			goto out;
		}
		error = FUNC3(page, mapping,
						index, GFP_KERNEL);
		if (error) {
			FUNC14(page);
			if (error == -EEXIST)
				goto find_page;
			desc->error = error;
			goto out;
		}
		goto readpage;
	}

out:
	ra->prev_pos = prev_index;
	ra->prev_pos <<= PAGE_CACHE_SHIFT;
	ra->prev_pos |= prev_offset;

	*ppos = ((loff_t)index << PAGE_CACHE_SHIFT) + offset;
	FUNC5(filp);
}
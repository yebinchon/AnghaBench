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
struct sg_iovec {unsigned long iov_len; scalar_t__ iov_base; } ;
struct request_queue {int dummy; } ;
struct page {int dummy; } ;
struct block_device {int dummy; } ;
struct bio {int bi_rw; int bi_flags; struct block_device* bi_bdev; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int BIO_RW ; 
 int BIO_USER_MAPPED ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct bio* FUNC0 (int) ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 unsigned int FUNC1 (struct request_queue*,struct bio*,struct page*,unsigned int,int) ; 
 struct bio* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int FUNC4 (unsigned long,int const,int,struct page**) ; 
 struct page** FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct page**) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 unsigned long FUNC8 (struct request_queue*) ; 

__attribute__((used)) static struct bio *FUNC9(struct request_queue *q,
				      struct block_device *bdev,
				      struct sg_iovec *iov, int iov_count,
				      int write_to_vm, gfp_t gfp_mask)
{
	int i, j;
	int nr_pages = 0;
	struct page **pages;
	struct bio *bio;
	int cur_page = 0;
	int ret, offset;

	for (i = 0; i < iov_count; i++) {
		unsigned long uaddr = (unsigned long)iov[i].iov_base;
		unsigned long len = iov[i].iov_len;
		unsigned long end = (uaddr + len + PAGE_SIZE - 1) >> PAGE_SHIFT;
		unsigned long start = uaddr >> PAGE_SHIFT;

		/*
		 * Overflow, abort
		 */
		if (end < start)
			return FUNC0(-EINVAL);

		nr_pages += end - start;
		/*
		 * buffer must be aligned to at least hardsector size for now
		 */
		if (uaddr & FUNC8(q))
			return FUNC0(-EINVAL);
	}

	if (!nr_pages)
		return FUNC0(-EINVAL);

	bio = FUNC2(gfp_mask, nr_pages);
	if (!bio)
		return FUNC0(-ENOMEM);

	ret = -ENOMEM;
	pages = FUNC5(nr_pages, sizeof(struct page *), gfp_mask);
	if (!pages)
		goto out;

	for (i = 0; i < iov_count; i++) {
		unsigned long uaddr = (unsigned long)iov[i].iov_base;
		unsigned long len = iov[i].iov_len;
		unsigned long end = (uaddr + len + PAGE_SIZE - 1) >> PAGE_SHIFT;
		unsigned long start = uaddr >> PAGE_SHIFT;
		const int local_nr_pages = end - start;
		const int page_limit = cur_page + local_nr_pages;

		ret = FUNC4(uaddr, local_nr_pages,
				write_to_vm, &pages[cur_page]);
		if (ret < local_nr_pages) {
			ret = -EFAULT;
			goto out_unmap;
		}

		offset = uaddr & ~PAGE_MASK;
		for (j = cur_page; j < page_limit; j++) {
			unsigned int bytes = PAGE_SIZE - offset;

			if (len <= 0)
				break;
			
			if (bytes > len)
				bytes = len;

			/*
			 * sorry...
			 */
			if (FUNC1(q, bio, pages[j], bytes, offset) <
					    bytes)
				break;

			len -= bytes;
			offset = 0;
		}

		cur_page = j;
		/*
		 * release the pages we didn't map into the bio, if any
		 */
		while (j < page_limit)
			FUNC7(pages[j++]);
	}

	FUNC6(pages);

	/*
	 * set data direction, and check if mapped pages need bouncing
	 */
	if (!write_to_vm)
		bio->bi_rw |= (1 << BIO_RW);

	bio->bi_bdev = bdev;
	bio->bi_flags |= (1 << BIO_USER_MAPPED);
	return bio;

 out_unmap:
	for (i = 0; i < nr_pages; i++) {
		if(!pages[i])
			break;
		FUNC7(pages[i]);
	}
 out:
	FUNC6(pages);
	FUNC3(bio);
	return FUNC0(ret);
}
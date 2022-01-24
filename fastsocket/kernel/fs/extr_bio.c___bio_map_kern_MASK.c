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
struct request_queue {int dummy; } ;
struct bio {int /*<<< orphan*/  bi_end_io; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct bio* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 unsigned int FUNC1 (struct request_queue*,struct bio*,int /*<<< orphan*/ ,unsigned int,int) ; 
 struct bio* FUNC2 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  bio_map_kern_endio ; 
 int FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

__attribute__((used)) static struct bio *FUNC5(struct request_queue *q, void *data,
				  unsigned int len, gfp_t gfp_mask)
{
	unsigned long kaddr = (unsigned long)data;
	unsigned long end = (kaddr + len + PAGE_SIZE - 1) >> PAGE_SHIFT;
	unsigned long start = kaddr >> PAGE_SHIFT;
	const int nr_pages = end - start;
	int offset, i;
	struct bio *bio;

	bio = FUNC2(gfp_mask, nr_pages);
	if (!bio)
		return FUNC0(-ENOMEM);

	offset = FUNC3(kaddr);
	for (i = 0; i < nr_pages; i++) {
		unsigned int bytes = PAGE_SIZE - offset;

		if (len <= 0)
			break;

		if (bytes > len)
			bytes = len;

		if (FUNC1(q, bio, FUNC4(data), bytes,
				    offset) < bytes)
			break;

		data += bytes;
		len -= bytes;
		offset = 0;
	}

	bio->bi_end_io = bio_map_kern_endio;
	return bio;
}
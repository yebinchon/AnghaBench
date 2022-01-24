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
struct scatterlist {int length; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int PAGE_CACHE_SIZE ; 
 int FUNC0 (void const*) ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*,struct page*,int /*<<< orphan*/ ,int) ; 
 struct page* FUNC3 (void const*) ; 

int FUNC4(const void *addr, int size, struct scatterlist *sg,
			int sg_size)
{
	int i = 0;
	struct page *pg;
	int offset;
	int remainder_of_page;

	FUNC1(sg, sg_size);

	while (size > 0 && i < sg_size) {
		pg = FUNC3(addr);
		offset = FUNC0(addr);
		if (sg)
			FUNC2(&sg[i], pg, 0, offset);
		remainder_of_page = PAGE_CACHE_SIZE - offset;
		if (size >= remainder_of_page) {
			if (sg)
				sg[i].length = remainder_of_page;
			addr += remainder_of_page;
			size -= remainder_of_page;
		} else {
			if (sg)
				sg[i].length = size;
			addr += size;
			size = 0;
		}
		i++;
	}
	if (size > 0)
		return -ENOMEM;
	return i;
}
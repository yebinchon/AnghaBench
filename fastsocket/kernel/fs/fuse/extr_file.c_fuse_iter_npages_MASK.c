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
struct iov_iter {int dummy; } ;

/* Variables and functions */
 int FUSE_MAX_PAGES_PER_REQ ; 
 unsigned long PAGE_MASK ; 
 size_t PAGE_SHIFT ; 
 size_t PAGE_SIZE ; 
 unsigned long FUNC0 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC1 (struct iov_iter*,size_t) ; 
 scalar_t__ FUNC2 (struct iov_iter*) ; 
 size_t FUNC3 (struct iov_iter*) ; 
 int FUNC4 (int,int) ; 

__attribute__((used)) static inline int FUNC5(const struct iov_iter *ii_p)
{
	struct iov_iter ii = *ii_p;
	int npages = 0;

	while (FUNC2(&ii) && npages < FUSE_MAX_PAGES_PER_REQ) {
		unsigned long user_addr = FUNC0(&ii);
		unsigned offset = user_addr & ~PAGE_MASK;
		size_t frag_size = FUNC3(&ii);

		npages += (frag_size + offset + PAGE_SIZE - 1) >> PAGE_SHIFT;
		FUNC1(&ii, frag_size);
	}

	return FUNC4(npages, FUSE_MAX_PAGES_PER_REQ);
}
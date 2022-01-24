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
struct page {size_t private; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  ARCH_KMALLOC_MINALIGN ; 
 int /*<<< orphan*/  ARCH_SLAB_MINALIGN ; 
 int PAGE_SIZE ; 
 void* ZERO_SIZE_PTR ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int __GFP_COMP ; 
 unsigned int FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int* FUNC4 (size_t,int,int,int) ; 
 void* FUNC5 (int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*,size_t,int,int,int) ; 
 struct page* FUNC7 (void*) ; 

void *FUNC8(size_t size, gfp_t gfp, int node)
{
	unsigned int *m;
	int align = FUNC3(ARCH_KMALLOC_MINALIGN, ARCH_SLAB_MINALIGN);
	void *ret;

	FUNC2(gfp);

	if (size < PAGE_SIZE - align) {
		if (!size)
			return ZERO_SIZE_PTR;

		m = FUNC4(size + align, gfp, align, node);

		if (!m)
			return NULL;
		*m = size;
		ret = (void *)m + align;

		FUNC6(_RET_IP_, ret,
				   size, size + align, gfp, node);
	} else {
		unsigned int order = FUNC0(size);

		ret = FUNC5(gfp | __GFP_COMP, FUNC0(size), node);
		if (ret) {
			struct page *page;
			page = FUNC7(ret);
			page->private = size;
		}

		FUNC6(_RET_IP_, ret,
				   size, PAGE_SIZE << order, gfp, node);
	}

	FUNC1(ret, size, 1, gfp);
	return ret;
}
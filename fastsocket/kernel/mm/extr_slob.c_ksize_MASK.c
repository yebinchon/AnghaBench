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
struct TYPE_2__ {size_t private; } ;
struct slob_page {TYPE_1__ page; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCH_KMALLOC_MINALIGN ; 
 int /*<<< orphan*/  ARCH_SLAB_MINALIGN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t SLOB_UNIT ; 
 size_t FUNC1 (unsigned int) ; 
 void const* ZERO_SIZE_PTR ; 
 scalar_t__ FUNC2 (struct slob_page*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct slob_page* FUNC4 (void const*) ; 
 scalar_t__ FUNC5 (int) ; 

size_t FUNC6(const void *block)
{
	struct slob_page *sp;

	FUNC0(!block);
	if (FUNC5(block == ZERO_SIZE_PTR))
		return 0;

	sp = FUNC4(block);
	if (FUNC2(sp)) {
		int align = FUNC3(ARCH_KMALLOC_MINALIGN, ARCH_SLAB_MINALIGN);
		unsigned int *m = (unsigned int *)(block - align);
		return FUNC1(*m) * SLOB_UNIT;
	} else
		return sp->page.private;
}
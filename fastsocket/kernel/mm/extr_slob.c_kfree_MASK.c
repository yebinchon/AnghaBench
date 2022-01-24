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
struct slob_page {int /*<<< orphan*/  page; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCH_KMALLOC_MINALIGN ; 
 int /*<<< orphan*/  ARCH_SLAB_MINALIGN ; 
 int /*<<< orphan*/  FUNC0 (void const*) ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 scalar_t__ FUNC1 (struct slob_page*) ; 
 int /*<<< orphan*/  FUNC2 (void const*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int*,unsigned int) ; 
 struct slob_page* FUNC6 (void const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(const void *block)
{
	struct slob_page *sp;

	FUNC7(_RET_IP_, block);

	if (FUNC8(FUNC0(block)))
		return;
	FUNC2(block);

	sp = FUNC6(block);
	if (FUNC1(sp)) {
		int align = FUNC3(ARCH_KMALLOC_MINALIGN, ARCH_SLAB_MINALIGN);
		unsigned int *m = (unsigned int *)(block - align);
		FUNC5(m, *m + align);
	} else
		FUNC4(&sp->page);
}
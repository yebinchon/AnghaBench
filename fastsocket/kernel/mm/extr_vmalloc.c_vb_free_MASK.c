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
struct vmap_block {scalar_t__ dirty; int free; int /*<<< orphan*/  lock; int /*<<< orphan*/  dirty_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 scalar_t__ VMAP_BBMAP_BITS ; 
 int VMAP_BLOCK_SIZE ; 
 unsigned long VMAP_MAX_ALLOC ; 
 unsigned long FUNC1 (unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct vmap_block*) ; 
 unsigned int FUNC5 (unsigned long) ; 
 struct vmap_block* FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vmap_block_tree ; 
 int /*<<< orphan*/  FUNC11 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC12(const void *addr, unsigned long size)
{
	unsigned long offset;
	unsigned long vb_idx;
	unsigned int order;
	struct vmap_block *vb;

	FUNC0(size & ~PAGE_MASK);
	FUNC0(size > PAGE_SIZE*VMAP_MAX_ALLOC);

	FUNC3((unsigned long)addr, (unsigned long)addr + size);

	order = FUNC5(size);

	offset = (unsigned long)addr & (VMAP_BLOCK_SIZE - 1);

	vb_idx = FUNC1((unsigned long)addr);
	FUNC7();
	vb = FUNC6(&vmap_block_tree, vb_idx);
	FUNC8();
	FUNC0(!vb);

	FUNC11((unsigned long)addr, (unsigned long)addr + size);

	FUNC9(&vb->lock);
	FUNC0(FUNC2(vb->dirty_map, offset >> PAGE_SHIFT, order));

	vb->dirty += 1UL << order;
	if (vb->dirty == VMAP_BBMAP_BITS) {
		FUNC0(vb->free);
		FUNC10(&vb->lock);
		FUNC4(vb);
	} else
		FUNC10(&vb->lock);
}
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
struct vmap_area {unsigned long va_start; unsigned long va_end; int /*<<< orphan*/  rb_node; } ;

/* Variables and functions */
 unsigned long VMALLOC_END ; 
 unsigned long FUNC0 (unsigned long,unsigned long const) ; 
 struct vmap_area* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned long FUNC3(struct vmap_area **pnext,
				       struct vmap_area **pprev,
				       unsigned long align)
{
	const unsigned long vmalloc_end = VMALLOC_END & ~(align - 1);
	unsigned long addr;

	if (*pnext)
		addr = FUNC0((*pnext)->va_start & ~(align - 1), vmalloc_end);
	else
		addr = vmalloc_end;

	while (*pprev && (*pprev)->va_end > addr) {
		*pnext = *pprev;
		*pprev = FUNC1(FUNC2(&(*pnext)->rb_node));
	}

	return addr;
}
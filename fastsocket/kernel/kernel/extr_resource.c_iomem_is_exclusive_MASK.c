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
typedef  int u64 ;
struct resource {int start; int end; int flags; struct resource* child; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int IORESOURCE_BUSY ; 
 int IORESOURCE_EXCLUSIVE ; 
 int PAGE_MASK ; 
 int PAGE_SIZE ; 
 struct resource iomem_resource ; 
 struct resource* FUNC0 (int /*<<< orphan*/ *,struct resource*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  resource_lock ; 
 int /*<<< orphan*/  strict_iomem_checks ; 

int FUNC3(u64 addr)
{
	struct resource *p = &iomem_resource;
	int err = 0;
	loff_t l;
	int size = PAGE_SIZE;

	if (!strict_iomem_checks)
		return 0;

	addr = addr & PAGE_MASK;

	FUNC1(&resource_lock);
	for (p = p->child; p ; p = FUNC0(NULL, p, &l)) {
		/*
		 * We can probably skip the resources without
		 * IORESOURCE_IO attribute?
		 */
		if (p->start >= addr + size)
			break;
		if (p->end < addr)
			continue;
		if (p->flags & IORESOURCE_BUSY &&
		     p->flags & IORESOURCE_EXCLUSIVE) {
			err = 1;
			break;
		}
	}
	FUNC2(&resource_lock);

	return err;
}
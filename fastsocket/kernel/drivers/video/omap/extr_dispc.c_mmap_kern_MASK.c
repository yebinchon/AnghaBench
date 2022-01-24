#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vm_struct {scalar_t__ addr; } ;
struct vm_area_struct {unsigned long vm_start; scalar_t__ vm_end; int /*<<< orphan*/ * vm_mm; } ;
struct omapfb_mem_region {int paddr; void* vaddr; scalar_t__ size; } ;
typedef  int /*<<< orphan*/  pgprot_t ;
struct TYPE_4__ {TYPE_1__* fbdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  VM_IOREMAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__ dispc ; 
 struct vm_struct* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_mm ; 
 scalar_t__ FUNC2 (struct vm_area_struct*,unsigned long,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pgprot_kernel ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct omapfb_mem_region *region)
{
	struct vm_struct	*kvma;
	struct vm_area_struct	vma;
	pgprot_t		pgprot;
	unsigned long		vaddr;

	kvma = FUNC1(region->size, VM_IOREMAP);
	if (kvma == NULL) {
		FUNC0(dispc.fbdev->dev, "can't get kernel vm area\n");
		return -ENOMEM;
	}
	vma.vm_mm = &init_mm;

	vaddr = (unsigned long)kvma->addr;

	pgprot = FUNC3(pgprot_kernel);
	vma.vm_start = vaddr;
	vma.vm_end = vaddr + region->size;
	if (FUNC2(&vma, vaddr, region->paddr >> PAGE_SHIFT,
			   region->size, pgprot) < 0) {
		FUNC0(dispc.fbdev->dev, "kernel mmap for FBMEM failed\n");
		return -EAGAIN;
	}
	region->vaddr = (void *)vaddr;

	return 0;
}
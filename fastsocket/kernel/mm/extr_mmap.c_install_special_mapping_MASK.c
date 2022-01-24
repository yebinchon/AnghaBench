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
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; unsigned long vm_flags; struct page** vm_private_data; int /*<<< orphan*/ * vm_ops; int /*<<< orphan*/  vm_page_prot; struct mm_struct* vm_mm; int /*<<< orphan*/  anon_vma_chain; } ;
struct page {int dummy; } ;
struct mm_struct {unsigned long def_flags; unsigned long total_vm; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long VM_DONTEXPAND ; 
 int FUNC1 (struct mm_struct*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct vm_area_struct*) ; 
 struct vm_area_struct* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_area_struct*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int) ; 
 int /*<<< orphan*/  special_mapping_vmops ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vm_area_cachep ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 

int FUNC8(struct mm_struct *mm,
			    unsigned long addr, unsigned long len,
			    unsigned long vm_flags, struct page **pages)
{
	int ret;
	struct vm_area_struct *vma;

	vma = FUNC3(vm_area_cachep, GFP_KERNEL);
	if (FUNC6(vma == NULL))
		return -ENOMEM;

	FUNC0(&vma->anon_vma_chain);
	vma->vm_mm = mm;
	vma->vm_start = addr;
	vma->vm_end = addr + len;

	vma->vm_flags = vm_flags | mm->def_flags | VM_DONTEXPAND;
	vma->vm_page_prot = FUNC7(vma->vm_flags);

	vma->vm_ops = &special_mapping_vmops;
	vma->vm_private_data = pages;

	ret = FUNC5(NULL, 0, 0, 0, vma->vm_start, 1);
	if (ret)
		goto out;

	ret = FUNC1(mm, vma);
	if (ret)
		goto out;

	mm->total_vm += len >> PAGE_SHIFT;

	FUNC4(vma);

	return 0;

out:
	FUNC2(vm_area_cachep, vma);
	return ret;
}
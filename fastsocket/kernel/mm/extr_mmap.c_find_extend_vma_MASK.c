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
struct vm_area_struct {unsigned long vm_start; int vm_flags; } ;
struct mm_struct {int dummy; } ;

/* Variables and functions */
 unsigned long PAGE_MASK ; 
 int VM_GROWSDOWN ; 
 int VM_LOCKED ; 
 scalar_t__ FUNC0 (struct vm_area_struct*,unsigned long) ; 
 struct vm_area_struct* FUNC1 (struct mm_struct*,unsigned long) ; 
 scalar_t__ FUNC2 (struct vm_area_struct*,unsigned long,unsigned long) ; 

struct vm_area_struct *
FUNC3(struct mm_struct * mm, unsigned long addr)
{
	struct vm_area_struct * vma;
	unsigned long start;

	addr &= PAGE_MASK;
	vma = FUNC1(mm,addr);
	if (!vma)
		return NULL;
	if (vma->vm_start <= addr)
		return vma;
	if (!(vma->vm_flags & VM_GROWSDOWN))
		return NULL;
	start = vma->vm_start;
	if (FUNC0(vma, addr))
		return NULL;
	if (vma->vm_flags & VM_LOCKED) {
		if (FUNC2(vma, addr, start) < 0)
			return NULL;	/* vma gone! */
	}
	return vma;
}
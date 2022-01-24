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
struct vm_area_struct {int vm_flags; scalar_t__ vm_start; scalar_t__ vm_end; int /*<<< orphan*/  vm_file; scalar_t__ anon_vma; TYPE_1__* vm_mm; } ;
struct cred {int dummy; } ;
struct TYPE_2__ {scalar_t__ start_brk; scalar_t__ brk; scalar_t__ start_stack; } ;

/* Variables and functions */
 int /*<<< orphan*/  FILE__EXECMOD ; 
 int /*<<< orphan*/  PROCESS__EXECHEAP ; 
 int /*<<< orphan*/  PROCESS__EXECSTACK ; 
 unsigned long PROT_EXEC ; 
 int VM_EXEC ; 
 int VM_SHARED ; 
 int FUNC0 (struct cred const*,struct cred const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 struct cred* FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct cred const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned long,int) ; 
 scalar_t__ selinux_checkreqprot ; 

__attribute__((used)) static int FUNC5(struct vm_area_struct *vma,
				 unsigned long reqprot,
				 unsigned long prot)
{
	const struct cred *cred = FUNC1();

	if (selinux_checkreqprot)
		prot = reqprot;

#ifndef CONFIG_PPC32
	if ((prot & PROT_EXEC) && !(vma->vm_flags & VM_EXEC)) {
		int rc = 0;
		if (vma->vm_start >= vma->vm_mm->start_brk &&
		    vma->vm_end <= vma->vm_mm->brk) {
			rc = FUNC0(cred, cred, PROCESS__EXECHEAP);
		} else if (!vma->vm_file &&
			   vma->vm_start <= vma->vm_mm->start_stack &&
			   vma->vm_end >= vma->vm_mm->start_stack) {
			rc = FUNC2(current, PROCESS__EXECSTACK);
		} else if (vma->vm_file && vma->anon_vma) {
			/*
			 * We are making executable a file mapping that has
			 * had some COW done. Since pages might have been
			 * written, check ability to execute the possibly
			 * modified content.  This typically should only
			 * occur for text relocations.
			 */
			rc = FUNC3(cred, vma->vm_file, FILE__EXECMOD);
		}
		if (rc)
			return rc;
	}
#endif

	return FUNC4(vma->vm_file, prot, vma->vm_flags&VM_SHARED);
}
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
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; unsigned long vm_pgoff; } ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int FUNC0 (struct vm_area_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_area_struct*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct vm_area_struct*) ; 

__attribute__((used)) static int FUNC8(struct vm_area_struct *vma,
				   unsigned long address)
{
	int error;

	/*
	 * We must make sure the anon_vma is allocated
	 * so that the anon_vma locking is not a noop.
	 */
	if (FUNC5(FUNC1(vma)))
		return -ENOMEM;

	address &= PAGE_MASK;
	error = FUNC4(NULL, 0, 0, 0, address, 1);
	if (error)
		return error;

	FUNC6(vma);

	/*
	 * vma->vm_start/vm_end cannot change under us because the caller
	 * is required to hold the mmap_sem in read mode.  We need the
	 * anon_vma lock to serialize against concurrent expand_stacks.
	 */

	/* Somebody else might have raced and expanded it already */
	if (address < vma->vm_start) {
		unsigned long size, grow;

		size = vma->vm_end - address;
		grow = (vma->vm_start - address) >> PAGE_SHIFT;

		error = -ENOMEM;
		if (grow <= vma->vm_pgoff) {
			error = FUNC0(vma, size, grow);
			if (!error) {
				vma->vm_start = address;
				vma->vm_pgoff -= grow;
				FUNC3(vma);
			}
		}
	}
	FUNC7(vma);
	FUNC2(vma);
	return error;
}
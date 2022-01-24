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
struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; unsigned long vm_pgoff; int vm_flags; scalar_t__ vm_file; TYPE_1__* vm_ops; int /*<<< orphan*/  anon_vma_chain; } ;
struct mm_struct {int dummy; } ;
struct mempolicy {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* close ) (struct vm_area_struct*) ;int /*<<< orphan*/  (* open ) (struct vm_area_struct*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct mempolicy*) ; 
 unsigned long PAGE_SHIFT ; 
 int FUNC2 (struct mempolicy*) ; 
 int VM_EXEC ; 
 int VM_EXECUTABLE ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*) ; 
 scalar_t__ FUNC4 (struct vm_area_struct*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct vm_area_struct*) ; 
 unsigned long FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct vm_area_struct*) ; 
 struct vm_area_struct* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct vm_area_struct*) ; 
 struct mempolicy* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct mempolicy*) ; 
 int /*<<< orphan*/  FUNC15 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC16 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC17 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC18 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  vm_area_cachep ; 
 int FUNC19 (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC20 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC21 (struct vm_area_struct*,struct mempolicy*) ; 

__attribute__((used)) static int FUNC22(struct mm_struct * mm, struct vm_area_struct * vma,
	      unsigned long addr, int new_below)
{
	struct mempolicy *pol;
	struct vm_area_struct *new;
	int err = -ENOMEM;

	if (FUNC10(vma) && (addr &
					~(FUNC9(FUNC8(vma)))))
		return -EINVAL;

	new = FUNC11(vm_area_cachep, GFP_KERNEL);
	if (!new)
		goto out_err;

	/* most fields are the same, copy all, and then fixup */
	*new = *vma;

	FUNC0(&new->anon_vma_chain);

	if (new_below)
		new->vm_end = addr;
	else {
		new->vm_start = addr;
		new->vm_pgoff += ((addr - vma->vm_start) >> PAGE_SHIFT);
	}

	pol = FUNC13(FUNC20(vma));
	if (FUNC1(pol)) {
		err = FUNC2(pol);
		goto out_free_vma;
	}
	FUNC21(new, pol);

	if (FUNC4(new, vma))
		goto out_free_mpol;

	if (new->vm_file) {
		FUNC7(new->vm_file);
		if (vma->vm_flags & VM_EXECUTABLE)
			FUNC3(mm);
	}

	if (new->vm_ops && new->vm_ops->open)
		new->vm_ops->open(new);

	if (new_below) {
		unsigned long old_end;

		old_end = vma->vm_end;
		err = FUNC19(vma, addr, vma->vm_end, vma->vm_pgoff +
			((addr - new->vm_start) >> PAGE_SHIFT), new);
		if (!err && vma->vm_flags & VM_EXEC)
			FUNC5(mm, old_end);
	} else
		err = FUNC19(vma, vma->vm_start, addr, vma->vm_pgoff, new);

	/* Success. */
	if (!err)
		return 0;

	/* Clean everything up if vma_adjust failed. */
	if (new->vm_ops && new->vm_ops->close)
		new->vm_ops->close(new);
	if (new->vm_file) {
		if (vma->vm_flags & VM_EXECUTABLE)
			FUNC15(mm);
		FUNC6(new->vm_file);
	}
	FUNC18(new);
 out_free_mpol:
	FUNC14(pol);
 out_free_vma:
	FUNC12(vm_area_cachep, new);
 out_err:
	return err;
}
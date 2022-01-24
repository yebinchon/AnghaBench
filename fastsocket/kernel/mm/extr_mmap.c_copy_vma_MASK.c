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
struct vm_area_struct {unsigned long vm_start; int vm_flags; unsigned long vm_end; unsigned long vm_pgoff; TYPE_1__* vm_ops; scalar_t__ vm_file; int /*<<< orphan*/  anon_vma_chain; int /*<<< orphan*/  anon_vma; struct mm_struct* vm_mm; } ;
struct rb_node {int dummy; } ;
struct mm_struct {int dummy; } ;
struct mempolicy {int dummy; } ;
typedef  unsigned long pgoff_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* open ) (struct vm_area_struct*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct mempolicy*) ; 
 unsigned long PAGE_SHIFT ; 
 int VM_EXECUTABLE ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*) ; 
 scalar_t__ FUNC3 (struct vm_area_struct*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*,unsigned long,struct vm_area_struct**,struct rb_node***,struct rb_node**) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 struct vm_area_struct* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct vm_area_struct*) ; 
 struct mempolicy* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mempolicy*) ; 
 int /*<<< orphan*/  FUNC10 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  vm_area_cachep ; 
 int /*<<< orphan*/  FUNC11 (struct mm_struct*,struct vm_area_struct*,struct vm_area_struct*,struct rb_node**,struct rb_node*) ; 
 struct vm_area_struct* FUNC12 (struct mm_struct*,struct vm_area_struct*,unsigned long,unsigned long,int,int /*<<< orphan*/ ,scalar_t__,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC14 (struct vm_area_struct*,struct mempolicy*) ; 

struct vm_area_struct *FUNC15(struct vm_area_struct **vmap,
	unsigned long addr, unsigned long len, pgoff_t pgoff)
{
	struct vm_area_struct *vma = *vmap;
	unsigned long vma_start = vma->vm_start;
	struct mm_struct *mm = vma->vm_mm;
	struct vm_area_struct *new_vma, *prev;
	struct rb_node **rb_link, *rb_parent;
	struct mempolicy *pol;

	/*
	 * If anonymous vma has not yet been faulted, update new pgoff
	 * to match new location, to increase its chance of merging.
	 */
	if (!vma->vm_file && !vma->anon_vma)
		pgoff = addr >> PAGE_SHIFT;

	FUNC4(mm, addr, &prev, &rb_link, &rb_parent);
	new_vma = FUNC12(mm, prev, addr, addr + len, vma->vm_flags,
			vma->anon_vma, vma->vm_file, pgoff, FUNC13(vma));
	if (new_vma) {
		/*
		 * Source vma may have been merged into new_vma
		 */
		if (vma_start >= new_vma->vm_start &&
		    vma_start < new_vma->vm_end)
			*vmap = new_vma;
	} else {
		new_vma = FUNC6(vm_area_cachep, GFP_KERNEL);
		if (new_vma) {
			*new_vma = *vma;
			pol = FUNC8(FUNC13(vma));
			if (FUNC1(pol))
				goto out_free_vma;
			FUNC0(&new_vma->anon_vma_chain);
			if (FUNC3(new_vma, vma))
				goto out_free_mempol;
			FUNC14(new_vma, pol);
			new_vma->vm_start = addr;
			new_vma->vm_end = addr + len;
			new_vma->vm_pgoff = pgoff;
			if (new_vma->vm_file) {
				FUNC5(new_vma->vm_file);
				if (vma->vm_flags & VM_EXECUTABLE)
					FUNC2(mm);
			}
			if (new_vma->vm_ops && new_vma->vm_ops->open)
				new_vma->vm_ops->open(new_vma);
			FUNC11(mm, new_vma, prev, rb_link, rb_parent);
		}
	}
	return new_vma;

 out_free_mempol:
	FUNC9(pol);
 out_free_vma:
	FUNC7(vm_area_cachep, new_vma);
	return NULL;
}
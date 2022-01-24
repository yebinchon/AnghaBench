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
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; struct vm_area_struct* vm_next; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  nodemask_t ;

/* Variables and functions */
 int EFAULT ; 
 struct vm_area_struct* FUNC0 (int) ; 
 unsigned long MPOL_MF_DISCONTIG_OK ; 
 unsigned long MPOL_MF_MOVE ; 
 unsigned long MPOL_MF_MOVE_ALL ; 
 unsigned long MPOL_MF_STRICT ; 
 int FUNC1 (struct vm_area_struct*,unsigned long,unsigned long,int /*<<< orphan*/  const*,unsigned long,void*) ; 
 struct vm_area_struct* FUNC2 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_area_struct*) ; 
 scalar_t__ FUNC4 (struct vm_area_struct*) ; 

__attribute__((used)) static struct vm_area_struct *
FUNC5(struct mm_struct *mm, unsigned long start, unsigned long end,
		const nodemask_t *nodes, unsigned long flags, void *private)
{
	int err;
	struct vm_area_struct *first, *vma, *prev;


	first = FUNC2(mm, start);
	if (!first)
		return FUNC0(-EFAULT);
	prev = NULL;
	for (vma = first; vma && vma->vm_start < end; vma = vma->vm_next) {
		if (!(flags & MPOL_MF_DISCONTIG_OK)) {
			if (!vma->vm_next && vma->vm_end < end)
				return FUNC0(-EFAULT);
			if (prev && prev->vm_end < vma->vm_start)
				return FUNC0(-EFAULT);
		}
		if (!FUNC3(vma) &&
		    ((flags & MPOL_MF_STRICT) ||
		     ((flags & (MPOL_MF_MOVE | MPOL_MF_MOVE_ALL)) &&
				FUNC4(vma)))) {
			unsigned long endvma = vma->vm_end;

			if (endvma > end)
				endvma = end;
			if (vma->vm_start > start)
				start = vma->vm_start;
			err = FUNC1(vma, start, endvma, nodes,
						flags, private);
			if (err) {
				first = FUNC0(err);
				break;
			}
		}
		prev = vma;
	}
	return first;
}
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
struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; int vm_flags; scalar_t__ vm_truncate_count; long vm_pgoff; struct vm_area_struct* vm_next; struct anon_vma* anon_vma; struct file* vm_file; struct mm_struct* vm_mm; } ;
struct prio_tree_root {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  map_count; } ;
struct file {struct address_space* f_mapping; } ;
struct anon_vma {int dummy; } ;
struct address_space {int /*<<< orphan*/  i_mmap_lock; struct prio_tree_root i_mmap; } ;
typedef  long pgoff_t ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int VM_EXECUTABLE ; 
 int VM_NONLINEAR ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*,struct file*,struct address_space*) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*,struct vm_area_struct*,struct vm_area_struct*) ; 
 scalar_t__ FUNC5 (struct vm_area_struct*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct anon_vma*) ; 
 int /*<<< orphan*/  FUNC7 (struct vm_area_struct*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct anon_vma*) ; 
 int /*<<< orphan*/  FUNC9 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC10 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC11 (struct file*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct mm_struct*) ; 
 int /*<<< orphan*/  vm_area_cachep ; 
 int /*<<< orphan*/  FUNC18 (struct vm_area_struct*,unsigned long,unsigned long,long) ; 
 int /*<<< orphan*/  FUNC19 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC20 (struct vm_area_struct*,struct prio_tree_root*) ; 
 int /*<<< orphan*/  FUNC21 (struct vm_area_struct*,struct prio_tree_root*) ; 

int FUNC22(struct vm_area_struct *vma, unsigned long start,
	unsigned long end, pgoff_t pgoff, struct vm_area_struct *insert)
{
	struct mm_struct *mm = vma->vm_mm;
	struct vm_area_struct *next = vma->vm_next;
	struct vm_area_struct *importer = NULL;
	struct address_space *mapping = NULL;
	struct prio_tree_root *root = NULL;
	struct anon_vma *anon_vma = NULL;
	struct file *file = vma->vm_file;
	long adjust_next = 0;
	int remove_next = 0;

	if (next && !insert) {
		struct vm_area_struct *exporter = NULL;

		if (end >= next->vm_end) {
			/*
			 * vma expands, overlapping all the next, and
			 * perhaps the one after too (mprotect case 6).
			 */
again:			remove_next = 1 + (end > next->vm_end);
			end = next->vm_end;
			exporter = next;
			importer = vma;
		} else if (end > next->vm_start) {
			/*
			 * vma expands, overlapping part of the next:
			 * mprotect case 5 shifting the boundary up.
			 */
			adjust_next = (end - next->vm_start) >> PAGE_SHIFT;
			exporter = next;
			importer = vma;
		} else if (end < vma->vm_end) {
			/*
			 * vma shrinks, and !insert tells it's not
			 * split_vma inserting another: so it must be
			 * mprotect case 4 shifting the boundary down.
			 */
			adjust_next = - ((vma->vm_end - end) >> PAGE_SHIFT);
			exporter = vma;
			importer = next;
		}

		/*
		 * Easily overlooked: when mprotect shifts the boundary,
		 * make sure the expanding vma has anon_vma set if the
		 * shrinking vma had, to cover any anon pages imported.
		 */
		if (exporter && exporter->anon_vma && !importer->anon_vma) {
			if (FUNC5(importer, exporter))
				return -ENOMEM;
			importer->anon_vma = exporter->anon_vma;
		}
	}

	if (file) {
		mapping = file->f_mapping;
		if (!(vma->vm_flags & VM_NONLINEAR))
			root = &mapping->i_mmap;
		FUNC15(&mapping->i_mmap_lock);
		if (importer &&
		    vma->vm_truncate_count != next->vm_truncate_count) {
			/*
			 * unmap_mapping_range might be in progress:
			 * ensure that the expanding vma is rescanned.
			 */
			importer->vm_truncate_count = 0;
		}
		if (insert) {
			insert->vm_truncate_count = vma->vm_truncate_count;
			/*
			 * Put into prio_tree now, so instantiated pages
			 * are visible to arm/parisc __flush_dcache_page
			 * throughout; but we cannot insert into address
			 * space until vma start or end is updated.
			 */
			FUNC3(insert);
		}
	}

	FUNC18(vma, start, end, adjust_next);

	/*
	 * When changing only vma->vm_end, we don't really need anon_vma
	 * lock. This is a fairly rare case by itself, but the anon_vma
	 * lock may be shared between many sibling processes.  Skipping
	 * the lock for brk adjustments makes a difference sometimes.
	 */
	if (vma->anon_vma && (insert || importer || start != vma->vm_start)) {
		anon_vma = vma->anon_vma;
		FUNC0(adjust_next && next->anon_vma &&
			  anon_vma != next->anon_vma);
	} else if (adjust_next && next->anon_vma)
		anon_vma = next->anon_vma;
	if (anon_vma)
		FUNC6(anon_vma);

	if (root) {
		FUNC9(mapping);
		FUNC21(vma, root);
		if (adjust_next)
			FUNC21(next, root);
	}

	vma->vm_start = start;
	vma->vm_end = end;
	vma->vm_pgoff = pgoff;
	if (adjust_next) {
		next->vm_start += adjust_next << PAGE_SHIFT;
		next->vm_pgoff += adjust_next;
	}

	if (root) {
		if (adjust_next)
			FUNC20(next, root);
		FUNC20(vma, root);
		FUNC10(mapping);
	}

	if (remove_next) {
		/*
		 * vma_merge has merged next into vma, and needs
		 * us to remove next before dropping the locks.
		 */
		FUNC4(mm, next, vma);
		if (file)
			FUNC2(next, file, mapping);
	} else if (insert) {
		/*
		 * split_vma has split insert from vma, and needs
		 * us to insert it before dropping the locks
		 * (it may either follow vma or precede it).
		 */
		FUNC1(mm, insert);
	}

	if (anon_vma)
		FUNC8(anon_vma);
	if (mapping)
		FUNC16(&mapping->i_mmap_lock);

	if (remove_next) {
		if (file) {
			FUNC11(file);
			if (next->vm_flags & VM_EXECUTABLE)
				FUNC14(mm);
		}
		if (next->anon_vma)
			FUNC7(vma, next);
		mm->map_count--;
		FUNC13(FUNC19(next));
		FUNC12(vm_area_cachep, next);
		/*
		 * In mprotect's case 6 (see comments on vma_merge),
		 * we must remove another next too. It would clutter
		 * up the code too much to do both in one go.
		 */
		if (remove_next == 2) {
			next = vma->vm_next;
			goto again;
		}
	}

	FUNC17(mm);

	return 0;
}
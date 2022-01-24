#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;
typedef  struct vm_area_struct mempolicy ;
typedef  int /*<<< orphan*/  nodemask_t ;
struct TYPE_4__ {struct mm_struct* mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_NICE ; 
 long EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 long EPERM ; 
 scalar_t__ FUNC0 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MIGRATE_SYNC ; 
 unsigned short MPOL_DEFAULT ; 
 unsigned long MPOL_MF_DISCONTIG_OK ; 
 unsigned long MPOL_MF_INVERT ; 
 unsigned long MPOL_MF_MOVE ; 
 unsigned long MPOL_MF_MOVE_ALL ; 
 unsigned long MPOL_MF_STRICT ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SIZE ; 
 long FUNC4 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct vm_area_struct* FUNC6 (struct mm_struct*,unsigned long,unsigned long,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ *) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct mm_struct*,unsigned long,unsigned long,struct vm_area_struct*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,int,int /*<<< orphan*/ ) ; 
 int FUNC11 () ; 
 struct vm_area_struct* FUNC12 (unsigned short,unsigned short,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct vm_area_struct*) ; 
 int FUNC14 (struct vm_area_struct*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  new_vma_page ; 
 int* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pagelist ; 
 int /*<<< orphan*/  FUNC16 (char*,unsigned long,unsigned long,unsigned short,unsigned short,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ scratch ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long FUNC21(unsigned long start, unsigned long len,
		     unsigned short mode, unsigned short mode_flags,
		     nodemask_t *nmask, unsigned long flags)
{
	struct vm_area_struct *vma;
	struct mm_struct *mm = current->mm;
	struct mempolicy *new;
	unsigned long end;
	int err;
	FUNC1(pagelist);

	if (flags & ~(unsigned long)(MPOL_MF_STRICT |
				     MPOL_MF_MOVE | MPOL_MF_MOVE_ALL))
		return -EINVAL;
	if ((flags & MPOL_MF_MOVE_ALL) && !FUNC5(CAP_SYS_NICE))
		return -EPERM;

	if (start & ~PAGE_MASK)
		return -EINVAL;

	if (mode == MPOL_DEFAULT)
		flags &= ~MPOL_MF_STRICT;

	len = (len + PAGE_SIZE - 1) & PAGE_MASK;
	end = start + len;

	if (end < start)
		return -EINVAL;
	if (end == start)
		return 0;

	new = FUNC12(mode, mode_flags, nmask);
	if (FUNC0(new))
		return FUNC4(new);

	/*
	 * If we are using the default policy then operation
	 * on discontinuous address spaces is okay after all
	 */
	if (!new)
		flags |= MPOL_MF_DISCONTIG_OK;

	FUNC16("mbind %lx-%lx mode:%d flags:%d nodes:%lx\n",
		 start, start + len, mode, mode_flags,
		 nmask ? FUNC15(*nmask)[0] : -1);

	if (flags & (MPOL_MF_MOVE | MPOL_MF_MOVE_ALL)) {

		err = FUNC11();
		if (err)
			goto mpol_out;
	}
	{
		FUNC2(scratch);
		if (scratch) {
			FUNC7(&mm->mmap_sem);
			FUNC18(current);
			err = FUNC14(new, nmask, scratch);
			FUNC19(current);
			if (err)
				FUNC20(&mm->mmap_sem);
		} else
			err = -ENOMEM;
		FUNC3(scratch);
	}
	if (err)
		goto mpol_out;

	vma = FUNC6(mm, start, end, nmask,
			  flags | MPOL_MF_INVERT, &pagelist);

	err = FUNC4(vma);
	if (!FUNC0(vma)) {
		int nr_failed = 0;

		err = FUNC9(mm, start, end, new);

		if (!FUNC8(&pagelist))
			nr_failed = FUNC10(&pagelist, new_vma_page,
						  (unsigned long)vma,
						  false, MIGRATE_SYNC);

		if (!err && nr_failed && (flags & MPOL_MF_STRICT))
			err = -EIO;
	} else
		FUNC17(&pagelist);

	FUNC20(&mm->mmap_sem);
 mpol_out:
	FUNC13(new);
	return err;
}
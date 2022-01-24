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
struct vm_area_struct {int vm_flags; } ;
struct resv_map {int dummy; } ;
struct inode {TYPE_1__* i_mapping; } ;
struct hugepage_subpool {int dummy; } ;
struct hstate {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  private_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 long ENOSPC ; 
 int /*<<< orphan*/  HPAGE_RESV_OWNER ; 
 int VM_MAYSHARE ; 
 int VM_NORESERVE ; 
 struct hstate* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct hugepage_subpool*,long) ; 
 int /*<<< orphan*/  FUNC2 (struct hugepage_subpool*,long) ; 
 long FUNC3 (struct hstate*,long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,long,long) ; 
 long FUNC5 (int /*<<< orphan*/ *,long,long) ; 
 struct resv_map* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct vm_area_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct vm_area_struct*,struct resv_map*) ; 
 struct hugepage_subpool* FUNC10 (struct inode*) ; 

int FUNC11(struct inode *inode,
					long from, long to,
					struct vm_area_struct *vma,
					int acctflag)
{
	long ret, chg;
	struct hstate *h = FUNC0(inode);
	struct hugepage_subpool *spool = FUNC10(inode);

	/*
	 * Only apply hugepage reservation if asked. At fault time, an
	 * attempt will be made for VM_NORESERVE to allocate a page
	 * without using reserves
	 */
	if (acctflag & VM_NORESERVE)
		return 0;

	/*
	 * Shared mappings base their reservation on the number of pages that
	 * are already allocated on behalf of the file. Private mappings need
	 * to reserve the full area even if read-only as mprotect() may be
	 * called to make the mapping read-write. Assume !vma is a shm mapping
	 */
	if (!vma || vma->vm_flags & VM_MAYSHARE)
		chg = FUNC5(&inode->i_mapping->private_list, from, to);
	else {
		struct resv_map *resv_map = FUNC6();
		if (!resv_map)
			return -ENOMEM;

		chg = to - from;

		FUNC9(vma, resv_map);
		FUNC8(vma, HPAGE_RESV_OWNER);
	}

	if (chg < 0) {
		ret = chg;
		goto out_err;
	}

	/* There must be enough pages in the subpool for the mapping */
	if (FUNC1(spool, chg)) {
		ret = -ENOSPC;
		goto out_err;
	}

	/*
	 * Check enough hugepages are available for the reservation.
	 * Hand the pages back to the subpool if there are not
	 */
	ret = FUNC3(h, chg);
	if (ret < 0) {
		FUNC2(spool, chg);
		goto out_err;
	}

	/*
	 * Account for the reservations made. Shared mappings record regions
	 * that have reservations as they are shared by multiple VMAs.
	 * When the last VMA disappears, the region map says how much
	 * the reservation was and the page cache tells how much of
	 * the reservation was consumed. Private mappings are per-VMA and
	 * only the consumed reservations are tracked. When the VMA
	 * disappears, the original reservation is the VMA size and the
	 * consumed reservations are stored in the map. Hence, nothing
	 * else has to be done for private mappings here
	 */
	if (!vma || vma->vm_flags & VM_MAYSHARE)
		FUNC4(&inode->i_mapping->private_list, from, to);
	return 0;
out_err:
	if (vma)
		FUNC7(vma);
	return ret;
}
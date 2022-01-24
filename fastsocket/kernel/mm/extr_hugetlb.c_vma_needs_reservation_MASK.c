#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {int vm_flags; TYPE_2__* vm_file; } ;
struct resv_map {int /*<<< orphan*/  regions; } ;
struct inode {TYPE_1__* i_mapping; } ;
struct hstate {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  scalar_t__ pgoff_t ;
struct TYPE_4__ {struct address_space* f_mapping; } ;
struct TYPE_3__ {int /*<<< orphan*/  private_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  HPAGE_RESV_OWNER ; 
 int VM_MAYSHARE ; 
 int /*<<< orphan*/  FUNC0 (struct vm_area_struct*,int /*<<< orphan*/ ) ; 
 long FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (struct hstate*,struct vm_area_struct*,unsigned long) ; 
 struct resv_map* FUNC3 (struct vm_area_struct*) ; 

__attribute__((used)) static long FUNC4(struct hstate *h,
			struct vm_area_struct *vma, unsigned long addr)
{
	struct address_space *mapping = vma->vm_file->f_mapping;
	struct inode *inode = mapping->host;

	if (vma->vm_flags & VM_MAYSHARE) {
		pgoff_t idx = FUNC2(h, vma, addr);
		return FUNC1(&inode->i_mapping->private_list,
							idx, idx + 1);

	} else if (!FUNC0(vma, HPAGE_RESV_OWNER)) {
		return 1;

	} else  {
		long err;
		pgoff_t idx = FUNC2(h, vma, addr);
		struct resv_map *reservations = FUNC3(vma);

		err = FUNC1(&reservations->regions, idx, idx + 1);
		if (err < 0)
			return err;
		return 0;
	}
}
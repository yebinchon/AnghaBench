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
struct xenbus_device {int dummy; } ;
struct vm_struct {void* addr; scalar_t__ phys_addr; struct vm_struct* next; } ;
struct gnttab_unmap_grant_ref {unsigned long host_addr; int status; scalar_t__ handle; } ;
typedef  int /*<<< orphan*/  int16_t ;
typedef  scalar_t__ grant_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ENOENT ; 
 int GNTST_bad_virt_addr ; 
 int GNTST_okay ; 
 int /*<<< orphan*/  GNTTABOP_unmap_grant_ref ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct gnttab_unmap_grant_ref*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct vm_struct* vmlist ; 
 int /*<<< orphan*/  vmlist_lock ; 
 int /*<<< orphan*/  FUNC4 (struct vm_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct xenbus_device*,int,char*,void*,...) ; 

int FUNC6(struct xenbus_device *dev, void *vaddr)
{
	struct vm_struct *area;
	struct gnttab_unmap_grant_ref op = {
		.host_addr = (unsigned long)vaddr,
	};

	/* It'd be nice if linux/vmalloc.h provided a find_vm_area(void *addr)
	 * method so that we don't have to muck with vmalloc internals here.
	 * We could force the user to hang on to their struct vm_struct from
	 * xenbus_map_ring_valloc, but these 6 lines considerably simplify
	 * this API.
	 */
	FUNC2(&vmlist_lock);
	for (area = vmlist; area != NULL; area = area->next) {
		if (area->addr == vaddr)
			break;
	}
	FUNC3(&vmlist_lock);

	if (!area) {
		FUNC5(dev, -ENOENT,
				 "can't find mapped virtual address %p", vaddr);
		return GNTST_bad_virt_addr;
	}

	op.handle = (grant_handle_t)area->phys_addr;

	if (FUNC1(GNTTABOP_unmap_grant_ref, &op, 1))
		FUNC0();

	if (op.status == GNTST_okay)
		FUNC4(area);
	else
		FUNC5(dev, op.status,
				 "unmapping page at handle %d error %d",
				 (int16_t)area->phys_addr, op.status);

	return op.status;
}
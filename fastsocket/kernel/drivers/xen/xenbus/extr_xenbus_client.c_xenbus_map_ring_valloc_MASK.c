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
struct xenbus_device {int /*<<< orphan*/  otherend_id; } ;
struct vm_struct {unsigned long phys_addr; void* addr; } ;
struct gnttab_map_grant_ref {int ref; unsigned long host_addr; scalar_t__ status; scalar_t__ handle; int /*<<< orphan*/  dom; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GNTMAP_host_map ; 
 scalar_t__ GNTST_okay ; 
 int /*<<< orphan*/  GNTTABOP_map_grant_ref ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct gnttab_map_grant_ref*,int) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct vm_struct* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct xenbus_device*,scalar_t__,char*,int,int /*<<< orphan*/ ) ; 

int FUNC5(struct xenbus_device *dev, int gnt_ref, void **vaddr)
{
	struct gnttab_map_grant_ref op = {
		.flags = GNTMAP_host_map,
		.ref   = gnt_ref,
		.dom   = dev->otherend_id,
	};
	struct vm_struct *area;

	*vaddr = NULL;

	area = FUNC2(PAGE_SIZE);
	if (!area)
		return -ENOMEM;

	op.host_addr = (unsigned long)area->addr;

	if (FUNC1(GNTTABOP_map_grant_ref, &op, 1))
		FUNC0();

	if (op.status != GNTST_okay) {
		FUNC3(area);
		FUNC4(dev, op.status,
				 "mapping in shared page %d from domain %d",
				 gnt_ref, dev->otherend_id);
		return op.status;
	}

	/* Stuff the handle in an unused field */
	area->phys_addr = (unsigned long)op.handle;

	*vaddr = area->addr;
	return 0;
}
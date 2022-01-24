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
struct gnttab_unmap_grant_ref {unsigned long host_addr; scalar_t__ status; int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  grant_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ GNTST_okay ; 
 int /*<<< orphan*/  GNTTABOP_unmap_grant_ref ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct gnttab_unmap_grant_ref*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct xenbus_device*,scalar_t__,char*,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC3(struct xenbus_device *dev,
		      grant_handle_t handle, void *vaddr)
{
	struct gnttab_unmap_grant_ref op = {
		.host_addr = (unsigned long)vaddr,
		.handle    = handle,
	};

	if (FUNC1(GNTTABOP_unmap_grant_ref, &op, 1))
		FUNC0();

	if (op.status != GNTST_okay)
		FUNC2(dev, op.status,
				 "unmapping page at handle %d error %d",
				 handle, op.status);

	return op.status;
}
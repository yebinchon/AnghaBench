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
typedef  int /*<<< orphan*/  vme_width_t ;
typedef  int /*<<< orphan*/  vme_cycle_t ;
typedef  int /*<<< orphan*/  vme_address_t ;
struct vme_master_resource {int kern_base; int /*<<< orphan*/  lock; TYPE_1__* parent; } ;
struct vme_bus_error {int address; } ;
typedef  int ssize_t ;
typedef  int loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vme_master_resource*,int*,unsigned long long*,unsigned long long*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  err_chk ; 
 int /*<<< orphan*/  FUNC2 (void*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,size_t) ; 
 struct vme_bus_error* FUNC6 (int /*<<< orphan*/ ,int,size_t) ; 

ssize_t FUNC7(struct vme_master_resource *image, void *buf,
	size_t count, loff_t offset)
{
	int retval, enabled;
	unsigned long long vme_base, size;
	vme_address_t aspace;
	vme_cycle_t cycle;
	vme_width_t dwidth;
	struct vme_bus_error *vme_err = NULL;

	FUNC3(&(image->lock));

	FUNC2(buf, image->kern_base + offset, (unsigned int)count);
	retval = count;

	if (!err_chk)
		goto skip_chk;

	FUNC0(image, &enabled, &vme_base, &size, &aspace, &cycle,
		&dwidth);

	vme_err = FUNC6(aspace, vme_base + offset, count);
	if(vme_err != NULL) {
		FUNC1(image->parent->parent, "First VME read error detected "
			"an at address 0x%llx\n", vme_err->address);
		retval = vme_err->address - (vme_base + offset);
		/* Clear down save errors in this address range */
		FUNC5(aspace, vme_base + offset, count);
	}

skip_chk:
	FUNC4(&(image->lock));

	return retval;
}
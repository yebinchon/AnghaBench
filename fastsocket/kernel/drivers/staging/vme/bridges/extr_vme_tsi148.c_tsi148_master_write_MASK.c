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
struct vme_master_resource {int kern_base; int /*<<< orphan*/  lock; } ;
struct vme_bus_error {int address; } ;
typedef  int ssize_t ;
typedef  int loff_t ;
struct TYPE_2__ {scalar_t__ kern_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vme_master_resource*,int*,unsigned long long*,unsigned long long*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  err_chk ; 
 TYPE_1__* flush_image ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,size_t) ; 
 struct vme_bus_error* FUNC7 (int /*<<< orphan*/ ,int,size_t) ; 

ssize_t FUNC8(struct vme_master_resource *image, void *buf,
	size_t count, loff_t offset)
{
	int retval = 0, enabled;
	unsigned long long vme_base, size;
	vme_address_t aspace;
	vme_cycle_t cycle;
	vme_width_t dwidth;

	struct vme_bus_error *vme_err = NULL;

	FUNC4(&(image->lock));

	FUNC2(image->kern_base + offset, buf, (unsigned int)count);
	retval = count;

	/*
	 * Writes are posted. We need to do a read on the VME bus to flush out
	 * all of the writes before we check for errors. We can't guarentee
	 * that reading the data we have just written is safe. It is believed
	 * that there isn't any read, write re-ordering, so we can read any
	 * location in VME space, so lets read the Device ID from the tsi148's
	 * own registers as mapped into CR/CSR space.
	 *
	 * We check for saved errors in the written address range/space.
	 */

	if (!err_chk)
		goto skip_chk;

	/*
	 * Get window info first, to maximise the time that the buffers may
	 * fluch on their own
	 */
	FUNC0(image, &enabled, &vme_base, &size, &aspace, &cycle,
		&dwidth);

	FUNC1(flush_image->kern_base + 0x7F000);

	vme_err = FUNC7(aspace, vme_base + offset, count);
	if(vme_err != NULL) {
		FUNC3("First VME write error detected an at address 0x%llx\n",
			vme_err->address);
		retval = vme_err->address - (vme_base + offset);
		/* Clear down save errors in this address range */
		FUNC6(aspace, vme_base + offset, count);
	}

skip_chk:
	FUNC5(&(image->lock));

	return retval;
}
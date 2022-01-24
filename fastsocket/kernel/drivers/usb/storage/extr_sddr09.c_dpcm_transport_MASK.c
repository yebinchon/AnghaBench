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
struct us_data {int dummy; } ;
struct scsi_cmnd {TYPE_1__* device; } ;
struct TYPE_2__ {int lun; } ;

/* Variables and functions */
 int USB_STOR_TRANSPORT_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct scsi_cmnd*,struct us_data*) ; 
 int FUNC2 (struct scsi_cmnd*,struct us_data*) ; 

__attribute__((used)) static int FUNC3(struct scsi_cmnd *srb, struct us_data *us)
{
	int ret;

	FUNC0("dpcm_transport: LUN=%d\n", srb->device->lun);

	switch (srb->device->lun) {
	case 0:

		/*
		 * LUN 0 corresponds to the CompactFlash card reader.
		 */
		ret = FUNC2(srb, us);
		break;

	case 1:

		/*
		 * LUN 1 corresponds to the SmartMedia card reader.
		 */

		/*
		 * Set the LUN to 0 (just in case).
		 */
		srb->device->lun = 0;
		ret = FUNC1(srb, us);
		srb->device->lun = 1;
		break;

	default:
		FUNC0("dpcm_transport: Invalid LUN %d\n",
				srb->device->lun);
		ret = USB_STOR_TRANSPORT_ERROR;
		break;
	}
	return ret;
}
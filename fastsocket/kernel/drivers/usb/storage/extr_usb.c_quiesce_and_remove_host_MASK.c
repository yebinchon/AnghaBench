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
struct us_data {int /*<<< orphan*/  delay_wait; int /*<<< orphan*/  dflags; int /*<<< orphan*/  scanning_done; TYPE_1__* pusb_dev; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ USB_STATE_NOTATTACHED ; 
 int /*<<< orphan*/  US_FLIDX_DISCONNECTING ; 
 int /*<<< orphan*/  US_FLIDX_DONT_SCAN ; 
 int /*<<< orphan*/  FUNC0 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC1 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct Scsi_Host* FUNC4 (struct us_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct us_data *us)
{
	struct Scsi_Host *host = FUNC4(us);

	/* If the device is really gone, cut short reset delays */
	if (us->pusb_dev->state == USB_STATE_NOTATTACHED)
		FUNC3(US_FLIDX_DISCONNECTING, &us->dflags);

	/* Prevent SCSI-scanning (if it hasn't started yet)
	 * and wait for the SCSI-scanning thread to stop.
	 */
	FUNC3(US_FLIDX_DONT_SCAN, &us->dflags);
	FUNC6(&us->delay_wait);
	FUNC5(&us->scanning_done);

	/* Removing the host will perform an orderly shutdown: caches
	 * synchronized, disks spun down, etc.
	 */
	FUNC1(host);

	/* Prevent any new commands from being accepted and cut short
	 * reset delays.
	 */
	FUNC0(host);
	FUNC3(US_FLIDX_DISCONNECTING, &us->dflags);
	FUNC2(host);
	FUNC6(&us->delay_wait);
}
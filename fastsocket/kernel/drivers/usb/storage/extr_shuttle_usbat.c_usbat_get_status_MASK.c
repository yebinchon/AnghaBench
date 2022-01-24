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
struct us_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  USBAT_ATA ; 
 int /*<<< orphan*/  USBAT_ATA_STATUS ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned short) ; 
 int FUNC1 (struct us_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 

__attribute__((used)) static int FUNC2(struct us_data *us, unsigned char *status)
{
	int rc;
	rc = FUNC1(us, USBAT_ATA, USBAT_ATA_STATUS, status);

	FUNC0("usbat_get_status: 0x%02X\n", (unsigned short) (*status));
	return rc;
}
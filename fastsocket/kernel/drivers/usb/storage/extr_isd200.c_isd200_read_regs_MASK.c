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
struct us_data {scalar_t__ extra; } ;
struct isd200_info {int /*<<< orphan*/ * ATARegs; int /*<<< orphan*/  RegsBuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACTION_READ_STATUS ; 
 size_t ATA_REG_ERROR_OFFSET ; 
 int ISD200_ERROR ; 
 int ISD200_GOOD ; 
 int ISD200_TRANSPORT_GOOD ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (struct us_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3( struct us_data *us )
{
	struct isd200_info *info = (struct isd200_info *)us->extra;
	int retStatus = ISD200_GOOD;
	int transferStatus;

	FUNC0("Entering isd200_IssueATAReadRegs\n");

	transferStatus = FUNC1( us, ACTION_READ_STATUS,
				    info->RegsBuf, sizeof(info->ATARegs) );
	if (transferStatus != ISD200_TRANSPORT_GOOD) {
		FUNC0("   Error reading ATA registers\n");
		retStatus = ISD200_ERROR;
	} else {
		FUNC2(info->ATARegs, info->RegsBuf, sizeof(info->ATARegs));
		FUNC0("   Got ATA Register[ATA_REG_ERROR_OFFSET] = 0x%x\n",
			  info->ATARegs[ATA_REG_ERROR_OFFSET]);
	}

	return retStatus;
}
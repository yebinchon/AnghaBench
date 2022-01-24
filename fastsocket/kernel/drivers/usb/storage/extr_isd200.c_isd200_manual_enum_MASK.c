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
struct us_data {scalar_t__ extra; } ;
struct TYPE_2__ {int ATAConfig; } ;
struct isd200_info {int DeviceHead; TYPE_1__ ConfigData; } ;

/* Variables and functions */
 int ATACFG_MASTER ; 
 int ATA_ADDRESS_DEVHEAD_SLAVE ; 
 int ATA_ADDRESS_DEVHEAD_STD ; 
 int ISD200_GOOD ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (struct us_data*) ; 
 int FUNC2 (struct us_data*) ; 
 int FUNC3 (struct us_data*,int,int) ; 
 int FUNC4 (struct us_data*) ; 

__attribute__((used)) static int FUNC5(struct us_data *us)
{
	struct isd200_info *info = (struct isd200_info *)us->extra;
	int retStatus = ISD200_GOOD;

	FUNC0("Entering isd200_manual_enum\n");

	retStatus = FUNC1(us);
	if (retStatus == ISD200_GOOD) {
		int isslave;
		/* master or slave? */
		retStatus = FUNC3( us, ATA_ADDRESS_DEVHEAD_STD, 0);
		if (retStatus == ISD200_GOOD)
			retStatus = FUNC3( us, ATA_ADDRESS_DEVHEAD_SLAVE, 0);

		if (retStatus == ISD200_GOOD) {
			retStatus = FUNC2(us);
			if (retStatus == ISD200_GOOD)
				/* ata or atapi? */
				retStatus = FUNC3( us, ATA_ADDRESS_DEVHEAD_STD, 1);
		}

		isslave = (info->DeviceHead & ATA_ADDRESS_DEVHEAD_SLAVE) ? 1 : 0;
		if (!(info->ConfigData.ATAConfig & ATACFG_MASTER)) {
			FUNC0("   Setting Master/Slave selection to %d\n", isslave);
			info->ConfigData.ATAConfig &= 0x3f;
			info->ConfigData.ATAConfig |= (isslave<<6);
			retStatus = FUNC4(us);
		}
	}

	FUNC0("Leaving isd200_manual_enum %08X\n", retStatus);
	return(retStatus);
}
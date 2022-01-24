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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  RT_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_FIRMWARE ; 
 int FEN_CPUEN ; 
 int IMEM_RDY ; 
 int /*<<< orphan*/  RT_STATUS_FAILURE ; 
 int /*<<< orphan*/  RT_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  SYS_CLKR ; 
 int SYS_CPU_CLKSEL ; 
 int /*<<< orphan*/  SYS_FUNC_EN ; 
 int /*<<< orphan*/  TCR ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ,int) ; 

RT_STATUS
FUNC6(struct net_device *dev)
{

	RT_STATUS	rtStatus = RT_STATUS_SUCCESS;
	u8		tmpU1b, CPUStatus = 0;
	u16		tmpU2b;
	u32		iCheckTime = 200;

	FUNC0(COMP_FIRMWARE, "-->FirmwareEnableCPU()\n" );
	// Enable CPU.
	tmpU1b = FUNC1(dev, SYS_CLKR);
	FUNC4(dev,  SYS_CLKR, (tmpU1b|SYS_CPU_CLKSEL)); //AFE source

	tmpU2b = FUNC2(dev, SYS_FUNC_EN);
	FUNC5(dev, SYS_FUNC_EN, (tmpU2b|FEN_CPUEN));

	//Polling IMEM Ready after CPU has refilled.
	do
	{
		CPUStatus = FUNC1(dev, TCR);
		if(CPUStatus& IMEM_RDY)
		{
			FUNC0(COMP_FIRMWARE, "IMEM Ready after CPU has refilled.\n");
			break;
		}

		//usleep(100);
		FUNC3(100);
	}while(iCheckTime--);

	if(!(CPUStatus & IMEM_RDY))
		return RT_STATUS_FAILURE;

	FUNC0(COMP_FIRMWARE, "<--FirmwareEnableCPU(): rtStatus(%#x)\n", rtStatus);
	return rtStatus;
}
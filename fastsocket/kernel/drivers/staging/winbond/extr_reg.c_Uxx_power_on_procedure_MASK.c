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
typedef  int u32 ;
struct hw_data {scalar_t__ phy_type; } ;

/* Variables and functions */
 scalar_t__ RF_MAXIM_V1 ; 
 scalar_t__ RF_WB_242 ; 
 scalar_t__ RF_WB_242_1 ; 
 int /*<<< orphan*/  FUNC0 (struct hw_data*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct hw_data*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(  struct hw_data * pHwData )
{
	u32	ltmp, loop;

	if( pHwData->phy_type <= RF_MAXIM_V1 )
		FUNC1( pHwData, 0x03d4, 0xffffff38 );
	else
	{
		FUNC1( pHwData, 0x03f4, 0xFF5807FF );// 20060721 For NEW IC 0xFF5807FF

		// 20060511.1 Fix the following 4 steps for Rx of RF 2230 initial fail
		FUNC1( pHwData, 0x03d4, 0x80 );// regulator on only
		FUNC2(10); // Modify 20051221.1.b
		FUNC1( pHwData, 0x03d4, 0xb8 );// REG_ON RF_RSTN on, and
		FUNC2(10); // Modify 20051221.1.b

		ltmp = 0x4968;
		if( (pHwData->phy_type == RF_WB_242) ||
			(RF_WB_242_1 == pHwData->phy_type) ) // 20060619.5 Add
			ltmp = 0x4468;
		FUNC1( pHwData, 0x03d0, ltmp );

		FUNC1( pHwData, 0x03d4, 0xa0 );// PLL_PD REF_PD set to 0

		FUNC2(20); // Modify 20051221.1.b
		FUNC0( pHwData, 0x03d0, &ltmp );
		loop = 500; // Wait for 5 second 20061101
		while( !(ltmp & 0x20) && loop-- )
		{
			FUNC2(10); // Modify 20051221.1.b
			if( !FUNC0( pHwData, 0x03d0, &ltmp ) )
				break;
		}

		FUNC1( pHwData, 0x03d4, 0xe0 );// MLK_EN
	}

	FUNC1( pHwData, 0x03b0, 1 );// Reset hardware first
	FUNC2(10); // Add this 20051221.1.b

	// Set burst write delay
	FUNC1( pHwData, 0x03f8, 0x7ff );
}
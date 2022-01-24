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
typedef  void* u32 ;
struct hw_data {scalar_t__ phy_type; void* BB54_cal; void* BB3c_cal; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hw_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct hw_data*) ; 
 scalar_t__ RF_WB_242 ; 
 scalar_t__ RF_WB_242_1 ; 
 int /*<<< orphan*/  FUNC2 (struct hw_data*,int,void**) ; 
 int /*<<< orphan*/  FUNC3 (struct hw_data*,int,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct hw_data*,int) ; 

void FUNC5(  struct hw_data * pHwData )
{
	u32 BB3c, BB54;

	if ((pHwData->phy_type == RF_WB_242) ||
		(pHwData->phy_type == RF_WB_242_1)) {
		FUNC4 ( pHwData, 2412 ); // Sync operation
		FUNC2( pHwData, 0x103c, &BB3c );
		FUNC2( pHwData, 0x1054, &BB54 );

		pHwData->BB3c_cal = BB3c;
		pHwData->BB54_cal = BB54;

		FUNC1(pHwData);
		FUNC0(pHwData); // Async operation

		FUNC3( pHwData, 0x103c, BB3c );
		FUNC3( pHwData, 0x1054, BB54 );
	}
}
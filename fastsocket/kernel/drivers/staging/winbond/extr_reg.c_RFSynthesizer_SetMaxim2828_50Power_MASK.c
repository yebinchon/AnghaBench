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
struct hw_data {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hw_data*,int,int) ; 
 int /*<<< orphan*/ * max2828_power_data_50 ; 

u8 FUNC2(  struct hw_data * pHwData, u8 index )
{
	u32		PowerData;
	if( index > 1 ) index = 1;
	PowerData = (1 << 31) | (0 << 30) | (18 << 24) | FUNC0( max2828_power_data_50[index], 18);
	FUNC1( pHwData, 0x0864, PowerData );
	return index;
}
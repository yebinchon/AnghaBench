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
struct wb35_reg {int D00_DmaControl; } ;
struct hw_data {struct wb35_reg reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hw_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct hw_data*,int,int) ; 

void FUNC2(  struct hw_data * pHwData )
{
	struct wb35_reg *reg = &pHwData->reg;

	// Old IC:Single mode only.
	// New IC: operation decide by Software set bit[4]. 1:multiple 0: single
	reg->D00_DmaControl = 0xc0000004;	//Txon, Rxon, multiple Rx for new 4k DMA
											//Txon, Rxon, single Rx for old 8k ASIC
	if( !FUNC0( pHwData ) )
		reg->D00_DmaControl = 0xc0000000;//Txon, Rxon, single Rx for new 4k DMA

	FUNC1( pHwData, 0x0400, reg->D00_DmaControl );
}
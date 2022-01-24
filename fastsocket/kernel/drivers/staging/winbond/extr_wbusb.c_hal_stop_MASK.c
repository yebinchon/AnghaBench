#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wb35_reg {int D00_DmaControl; } ;
struct TYPE_4__ {int tx_halt; } ;
struct TYPE_3__ {int rx_halt; } ;
struct hw_data {TYPE_2__ Wb35Tx; TYPE_1__ Wb35Rx; struct wb35_reg reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hw_data*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hw_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct hw_data*) ; 

__attribute__((used)) static void FUNC3(struct hw_data *pHwData)
{
	struct wb35_reg *reg = &pHwData->reg;

	pHwData->Wb35Rx.rx_halt = 1;
	FUNC1(pHwData);

	pHwData->Wb35Tx.tx_halt = 1;
	FUNC2(pHwData);

	reg->D00_DmaControl &= ~0xc0000000;	//Tx Off, Rx Off
	FUNC0(pHwData, 0x0400, reg->D00_DmaControl);
}
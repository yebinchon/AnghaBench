
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wb35_reg {int D00_DmaControl; } ;
struct TYPE_4__ {int tx_halt; } ;
struct TYPE_3__ {int rx_halt; } ;
struct hw_data {TYPE_2__ Wb35Tx; TYPE_1__ Wb35Rx; struct wb35_reg reg; } ;


 int Wb35Reg_Write (struct hw_data*,int,int) ;
 int Wb35Rx_stop (struct hw_data*) ;
 int Wb35Tx_stop (struct hw_data*) ;

__attribute__((used)) static void hal_stop(struct hw_data *pHwData)
{
 struct wb35_reg *reg = &pHwData->reg;

 pHwData->Wb35Rx.rx_halt = 1;
 Wb35Rx_stop(pHwData);

 pHwData->Wb35Tx.tx_halt = 1;
 Wb35Tx_stop(pHwData);

 reg->D00_DmaControl &= ~0xc0000000;
 Wb35Reg_Write(pHwData, 0x0400, reg->D00_DmaControl);
}

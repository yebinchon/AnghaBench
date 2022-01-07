
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_data {int LEDTimer; } ;


 int Wb35Reg_destroy (struct hw_data*) ;
 int Wb35Rx_destroy (struct hw_data*) ;
 int Wb35Tx_destroy (struct hw_data*) ;
 int del_timer_sync (int *) ;
 int msleep (int) ;

__attribute__((used)) static void hal_halt(struct hw_data *pHwData)
{
 del_timer_sync(&pHwData->LEDTimer);

 msleep(100);
 Wb35Rx_destroy(pHwData);
 Wb35Tx_destroy(pHwData);
 Wb35Reg_destroy(pHwData);
}

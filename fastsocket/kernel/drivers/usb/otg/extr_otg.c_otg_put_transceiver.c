
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otg_transceiver {int dev; } ;


 int put_device (int ) ;

void otg_put_transceiver(struct otg_transceiver *x)
{
 if (x)
  put_device(x->dev);
}

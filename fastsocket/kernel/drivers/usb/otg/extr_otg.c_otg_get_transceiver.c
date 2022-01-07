
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otg_transceiver {int dev; } ;


 int get_device (int ) ;
 struct otg_transceiver* xceiv ;

struct otg_transceiver *otg_get_transceiver(void)
{
 if (xceiv)
  get_device(xceiv->dev);
 return xceiv;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otg_transceiver {int dummy; } ;


 int EBUSY ;
 struct otg_transceiver* xceiv ;

int otg_set_transceiver(struct otg_transceiver *x)
{
 if (xceiv && x)
  return -EBUSY;
 xceiv = x;
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct et131x_adapter {int dummy; } ;


 int MiRead (struct et131x_adapter*,int ,int*) ;
 int MiWrite (struct et131x_adapter*,int ,int) ;
 int PHY_CONTROL ;

void ET1310_PhyAutoNeg(struct et131x_adapter *etdev, bool enable)
{
 uint16_t data;

 MiRead(etdev, PHY_CONTROL, &data);

 if (enable == 1) {

  data |= 0x1000;
  MiWrite(etdev, PHY_CONTROL, data);
 } else {

  data &= ~0x1000;
  MiWrite(etdev, PHY_CONTROL, data);
 }
}

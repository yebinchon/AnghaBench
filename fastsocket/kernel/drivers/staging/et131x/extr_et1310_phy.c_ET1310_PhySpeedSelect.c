
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct et131x_adapter {int dummy; } ;


 int MiRead (struct et131x_adapter*,int ,int*) ;
 int MiWrite (struct et131x_adapter*,int ,int) ;
 int PHY_CONTROL ;




void ET1310_PhySpeedSelect(struct et131x_adapter *etdev, uint16_t speed)
{
 uint16_t data;


 MiRead(etdev, PHY_CONTROL, &data);


 data &= ~0x2040;


 switch (speed) {
 case 128:

  break;

 case 129:

  data |= 0x2000;
  break;

 case 130:
 default:
  data |= 0x0040;
  break;
 }


 MiWrite(etdev, PHY_CONTROL, data);
}

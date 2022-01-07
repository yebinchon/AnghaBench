
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct et131x_adapter {int dummy; } ;


 int MiRead (struct et131x_adapter*,int ,int*) ;
 int MiWrite (struct et131x_adapter*,int ,int) ;
 int PHY_AUTO_ADVERTISEMENT ;





void ET1310_PhyAdvertise10BaseT(struct et131x_adapter *etdev,
    uint16_t duplex)
{
 uint16_t data;


 MiRead(etdev, PHY_AUTO_ADVERTISEMENT, &data);


 data &= ~0x0060;

 switch (duplex) {
 case 128:

  break;

 case 130:

  data |= 0x0040;
  break;

 case 129:

  data |= 0x0020;
  break;

 case 131:
 default:

  data |= 0x0060;
  break;
 }


 MiWrite(etdev, PHY_AUTO_ADVERTISEMENT, data);
}

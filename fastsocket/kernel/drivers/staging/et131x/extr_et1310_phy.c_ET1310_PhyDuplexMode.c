
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct et131x_adapter {int dummy; } ;


 int MiRead (struct et131x_adapter*,int ,scalar_t__*) ;
 int MiWrite (struct et131x_adapter*,int ,scalar_t__) ;
 int PHY_CONTROL ;
 scalar_t__ TRUEPHY_DUPLEX_FULL ;

void ET1310_PhyDuplexMode(struct et131x_adapter *etdev, uint16_t duplex)
{
 uint16_t data;

 MiRead(etdev, PHY_CONTROL, &data);

 if (duplex == TRUEPHY_DUPLEX_FULL) {

  data |= 0x100;
  MiWrite(etdev, PHY_CONTROL, data);
 } else {

  data &= ~0x100;
  MiWrite(etdev, PHY_CONTROL, data);
 }
}

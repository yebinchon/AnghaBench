
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct et131x_adapter {int dummy; } ;


 int ET1310_PhyAdvertise1000BaseT (struct et131x_adapter*,int ) ;
 int ET1310_PhyAdvertise100BaseT (struct et131x_adapter*,int ) ;
 int ET1310_PhyAdvertise10BaseT (struct et131x_adapter*,int ) ;
 int ET1310_PhyPowerDown (struct et131x_adapter*,int) ;
 int ET1310_PhySpeedSelect (struct et131x_adapter*,int ) ;
 int TRUEPHY_ADV_DUPLEX_HALF ;
 int TRUEPHY_ADV_DUPLEX_NONE ;
 int TRUEPHY_SPEED_100MBPS ;

void TPAL_SetPhy100HalfDuplex(struct et131x_adapter *etdev)
{

 ET1310_PhyPowerDown(etdev, 1);


 ET1310_PhyAdvertise1000BaseT(etdev, TRUEPHY_ADV_DUPLEX_NONE);

 ET1310_PhyAdvertise10BaseT(etdev, TRUEPHY_ADV_DUPLEX_NONE);


 ET1310_PhyAdvertise100BaseT(etdev, TRUEPHY_ADV_DUPLEX_HALF);


 ET1310_PhySpeedSelect(etdev, TRUEPHY_SPEED_100MBPS);


 ET1310_PhyPowerDown(etdev, 0);
}

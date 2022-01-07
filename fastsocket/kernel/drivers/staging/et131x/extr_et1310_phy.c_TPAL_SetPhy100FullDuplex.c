
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct et131x_adapter {int dummy; } ;


 int ET1310_PhyAdvertise1000BaseT (struct et131x_adapter*,int ) ;
 int ET1310_PhyAdvertise100BaseT (struct et131x_adapter*,int ) ;
 int ET1310_PhyAdvertise10BaseT (struct et131x_adapter*,int ) ;
 int ET1310_PhyPowerDown (struct et131x_adapter*,int) ;
 int TRUEPHY_ADV_DUPLEX_FULL ;
 int TRUEPHY_ADV_DUPLEX_NONE ;

void TPAL_SetPhy100FullDuplex(struct et131x_adapter *etdev)
{

 ET1310_PhyPowerDown(etdev, 1);


 ET1310_PhyAdvertise1000BaseT(etdev, TRUEPHY_ADV_DUPLEX_NONE);

 ET1310_PhyAdvertise10BaseT(etdev, TRUEPHY_ADV_DUPLEX_NONE);


 ET1310_PhyAdvertise100BaseT(etdev, TRUEPHY_ADV_DUPLEX_FULL);


 ET1310_PhyPowerDown(etdev, 0);
}

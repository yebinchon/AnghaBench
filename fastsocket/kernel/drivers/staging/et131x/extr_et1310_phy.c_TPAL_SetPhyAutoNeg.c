
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct et131x_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {scalar_t__ device; } ;


 int ET1310_PhyAdvertise1000BaseT (struct et131x_adapter*,int ) ;
 int ET1310_PhyAdvertise100BaseT (struct et131x_adapter*,int ) ;
 int ET1310_PhyAdvertise10BaseT (struct et131x_adapter*,int ) ;
 int ET1310_PhyAutoNeg (struct et131x_adapter*,int) ;
 int ET1310_PhyPowerDown (struct et131x_adapter*,int) ;
 scalar_t__ ET131X_PCI_DEVICE_ID_FAST ;
 int TRUEPHY_ADV_DUPLEX_BOTH ;
 int TRUEPHY_ADV_DUPLEX_FULL ;
 int TRUEPHY_ADV_DUPLEX_NONE ;

void TPAL_SetPhyAutoNeg(struct et131x_adapter *etdev)
{

 ET1310_PhyPowerDown(etdev, 1);


 ET1310_PhyAdvertise10BaseT(etdev, TRUEPHY_ADV_DUPLEX_BOTH);

 ET1310_PhyAdvertise100BaseT(etdev, TRUEPHY_ADV_DUPLEX_BOTH);

 if (etdev->pdev->device != ET131X_PCI_DEVICE_ID_FAST)
  ET1310_PhyAdvertise1000BaseT(etdev, TRUEPHY_ADV_DUPLEX_FULL);
 else
  ET1310_PhyAdvertise1000BaseT(etdev, TRUEPHY_ADV_DUPLEX_NONE);


 ET1310_PhyAutoNeg(etdev, 1);


 ET1310_PhyPowerDown(etdev, 0);
}

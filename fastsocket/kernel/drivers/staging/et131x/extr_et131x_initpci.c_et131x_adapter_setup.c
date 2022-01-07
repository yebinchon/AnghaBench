
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct et131x_adapter {TYPE_1__* pdev; TYPE_2__* regs; } ;
struct TYPE_6__ {int mmc_ctrl; } ;
struct TYPE_5__ {TYPE_3__ mmc; } ;
struct TYPE_4__ {scalar_t__ device; int dev; } ;


 int ConfigGlobalRegs (struct et131x_adapter*) ;
 int ConfigMACRegs1 (struct et131x_adapter*) ;
 int ConfigMacStatRegs (struct et131x_adapter*) ;
 int ConfigRxDmaRegs (struct et131x_adapter*) ;
 int ConfigRxMacRegs (struct et131x_adapter*) ;
 int ConfigTxDmaRegs (struct et131x_adapter*) ;
 int ConfigTxMacRegs (struct et131x_adapter*) ;
 int ET1310_PhyAdvertise1000BaseT (struct et131x_adapter*,int ) ;
 int ET1310_PhyInit (struct et131x_adapter*) ;
 int ET1310_PhyPowerDown (struct et131x_adapter*,int) ;
 int ET1310_PhyReset (struct et131x_adapter*) ;
 scalar_t__ ET131X_PCI_DEVICE_ID_FAST ;
 int ET_MMC_ENABLE ;
 int TRUEPHY_ADV_DUPLEX_FULL ;
 int TRUEPHY_ADV_DUPLEX_NONE ;
 int dev_warn (int *,char*) ;
 int et131x_setphy_normal (struct et131x_adapter*) ;
 int et131x_xcvr_find (struct et131x_adapter*) ;
 int writel (int ,int *) ;

int et131x_adapter_setup(struct et131x_adapter *etdev)
{
 int status = 0;


 ConfigGlobalRegs(etdev);

 ConfigMACRegs1(etdev);



 writel(ET_MMC_ENABLE, &etdev->regs->mmc.mmc_ctrl);

 ConfigRxMacRegs(etdev);
 ConfigTxMacRegs(etdev);

 ConfigRxDmaRegs(etdev);
 ConfigTxDmaRegs(etdev);

 ConfigMacStatRegs(etdev);


 status = et131x_xcvr_find(etdev);

 if (status != 0)
  dev_warn(&etdev->pdev->dev, "Could not find the xcvr\n");


 ET1310_PhyInit(etdev);


 ET1310_PhyReset(etdev);


 ET1310_PhyPowerDown(etdev, 1);





 if (etdev->pdev->device != ET131X_PCI_DEVICE_ID_FAST)
  ET1310_PhyAdvertise1000BaseT(etdev, TRUEPHY_ADV_DUPLEX_FULL);
 else
  ET1310_PhyAdvertise1000BaseT(etdev, TRUEPHY_ADV_DUPLEX_NONE);


 ET1310_PhyPowerDown(etdev, 0);

 et131x_setphy_normal(etdev);
; return status;
}

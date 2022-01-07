
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_11__ {int link_status; } ;
struct TYPE_12__ {TYPE_5__ bits; } ;
struct TYPE_10__ {int TransPhyComaModeOnBoot; } ;
struct et131x_adapter {int ErrorTimer; scalar_t__ RegistryPhyComa; TYPE_6__ Bmsr; TYPE_4__ PoMgmt; TYPE_3__* pdev; TYPE_2__* regs; } ;
struct TYPE_9__ {int dev; } ;
struct TYPE_7__ {int pm_csr; } ;
struct TYPE_8__ {TYPE_1__ global; } ;


 int ET_PM_PHY_SW_COMA ;
 int EnablePhyComa (struct et131x_adapter*) ;
 int HZ ;
 int TX_ERROR_PERIOD ;
 int UpdateMacStatHostCounters (struct et131x_adapter*) ;
 int dev_err (int *,char*,int) ;
 int et131x_enable_interrupts (struct et131x_adapter*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int readl (int *) ;

void et131x_error_timer_handler(unsigned long data)
{
 struct et131x_adapter *etdev = (struct et131x_adapter *) data;
 u32 pm_csr;

 pm_csr = readl(&etdev->regs->global.pm_csr);

 if ((pm_csr & ET_PM_PHY_SW_COMA) == 0)
  UpdateMacStatHostCounters(etdev);
 else
  dev_err(&etdev->pdev->dev,
      "No interrupts, in PHY coma, pm_csr = 0x%x\n", pm_csr);

 if (!etdev->Bmsr.bits.link_status &&
     etdev->RegistryPhyComa &&
     etdev->PoMgmt.TransPhyComaModeOnBoot < 11) {
  etdev->PoMgmt.TransPhyComaModeOnBoot++;
 }

 if (etdev->PoMgmt.TransPhyComaModeOnBoot == 10) {
  if (!etdev->Bmsr.bits.link_status
      && etdev->RegistryPhyComa) {
   if ((pm_csr & ET_PM_PHY_SW_COMA) == 0) {



    et131x_enable_interrupts(etdev);
    EnablePhyComa(etdev);
   }
  }
 }


 mod_timer(&etdev->ErrorTimer, jiffies +
       TX_ERROR_PERIOD * HZ / 1000);
}

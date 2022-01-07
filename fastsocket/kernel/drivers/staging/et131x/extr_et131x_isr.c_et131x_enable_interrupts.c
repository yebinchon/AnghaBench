
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct et131x_adapter {scalar_t__ FlowControl; TYPE_2__* regs; int CachedMaskValue; scalar_t__ DriverNoPhyAccess; } ;
struct TYPE_3__ {int int_mask; } ;
struct TYPE_4__ {TYPE_1__ global; } ;


 scalar_t__ Both ;
 int ET_INTR_PHY ;
 int INT_MASK_ENABLE ;
 int INT_MASK_ENABLE_NO_FLOW ;
 scalar_t__ TxOnly ;
 int writel (int ,int *) ;

void et131x_enable_interrupts(struct et131x_adapter *adapter)
{
 u32 mask;


 if (adapter->FlowControl == TxOnly || adapter->FlowControl == Both)
  mask = INT_MASK_ENABLE;
 else
  mask = INT_MASK_ENABLE_NO_FLOW;

 if (adapter->DriverNoPhyAccess)
  mask |= ET_INTR_PHY;

 adapter->CachedMaskValue = mask;
 writel(mask, &adapter->regs->global.int_mask);
}

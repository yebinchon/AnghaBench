
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct et131x_adapter {TYPE_2__* regs; } ;
struct TYPE_7__ {int value; } ;
struct TYPE_8__ {TYPE_3__ cfg1; } ;
struct TYPE_5__ {int sw_reset; } ;
struct TYPE_6__ {TYPE_4__ mac; TYPE_1__ global; } ;


 int writel (int,int *) ;

void et131x_soft_reset(struct et131x_adapter *adapter)
{

 writel(0xc00f0000, &adapter->regs->mac.cfg1.value);


 writel(0x7F, &adapter->regs->global.sw_reset);
 writel(0x000f0000, &adapter->regs->mac.cfg1.value);
 writel(0x00000000, &adapter->regs->mac.cfg1.value);
}

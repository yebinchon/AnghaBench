
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ base; } ;


 scalar_t__* TSI148_GCSR_MBOX ;
 int* TSI148_LCSR_INTC_MBC ;
 int* TSI148_LCSR_INTS_MBS ;
 int ioread32be (scalar_t__) ;
 int printk (char*,int,int) ;
 TYPE_1__* tsi148_bridge ;

__attribute__((used)) static u32 tsi148_MB_irqhandler(u32 stat)
{
 int i;
 u32 val;
 u32 serviced = 0;

 for (i = 0; i < 4; i++) {
  if(stat & TSI148_LCSR_INTS_MBS[i]) {
   val = ioread32be(tsi148_bridge->base +
    TSI148_GCSR_MBOX[i]);
   printk("VME Mailbox %d received: 0x%x\n", i, val);
   serviced |= TSI148_LCSR_INTC_MBC[i];
  }
 }

 return serviced;
}

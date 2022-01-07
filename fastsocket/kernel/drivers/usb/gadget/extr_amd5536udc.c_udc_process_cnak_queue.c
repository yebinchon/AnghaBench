
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct udc {TYPE_2__* ep; } ;
struct TYPE_4__ {int num; scalar_t__ naking; TYPE_1__* regs; } ;
struct TYPE_3__ {int ctl; } ;


 int AMD_BIT (int ) ;
 int DBG (struct udc*,char*,...) ;
 int UDC_EP0OUT_IX ;
 int UDC_EPCTL_CNAK ;
 int UDC_EPIN_NUM_USED ;
 int UDC_QUEUE_CNAK (TYPE_2__*,int ) ;
 int cnak_pending ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static void udc_process_cnak_queue(struct udc *dev)
{
 u32 tmp;
 u32 reg;


 DBG(dev, "CNAK pending queue processing\n");
 for (tmp = 0; tmp < UDC_EPIN_NUM_USED; tmp++) {
  if (cnak_pending & (1 << tmp)) {
   DBG(dev, "CNAK pending for ep%d\n", tmp);

   reg = readl(&dev->ep[tmp].regs->ctl);
   reg |= AMD_BIT(UDC_EPCTL_CNAK);
   writel(reg, &dev->ep[tmp].regs->ctl);
   dev->ep[tmp].naking = 0;
   UDC_QUEUE_CNAK(&dev->ep[tmp], dev->ep[tmp].num);
  }
 }

 if (cnak_pending & (1 << UDC_EP0OUT_IX)) {
  DBG(dev, "CNAK pending for ep%d\n", UDC_EP0OUT_IX);

  reg = readl(&dev->ep[UDC_EP0OUT_IX].regs->ctl);
  reg |= AMD_BIT(UDC_EPCTL_CNAK);
  writel(reg, &dev->ep[UDC_EP0OUT_IX].regs->ctl);
  dev->ep[UDC_EP0OUT_IX].naking = 0;
  UDC_QUEUE_CNAK(&dev->ep[UDC_EP0OUT_IX],
    dev->ep[UDC_EP0OUT_IX].num);
 }
}

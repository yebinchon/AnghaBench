
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct udc {TYPE_1__* regs; } ;
struct TYPE_2__ {int ep_irqmsk; } ;


 int AMD_UNMASK_BIT (int ) ;
 int DBG (struct udc*,char*) ;
 int UDC_EPINT_IN_EP0 ;
 int UDC_EPINT_OUT_EP0 ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static int udc_enable_ep0_interrupts(struct udc *dev)
{
 u32 tmp;

 DBG(dev, "udc_enable_ep0_interrupts()\n");


 tmp = readl(&dev->regs->ep_irqmsk);

 tmp &= AMD_UNMASK_BIT(UDC_EPINT_IN_EP0)
  & AMD_UNMASK_BIT(UDC_EPINT_OUT_EP0);
 writel(tmp, &dev->regs->ep_irqmsk);

 return 0;
}

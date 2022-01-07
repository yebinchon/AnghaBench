
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct udc {TYPE_1__* regs; } ;
struct TYPE_2__ {int ep_irqmsk; int irqmsk; } ;


 int AMD_BIT (int ) ;
 int UDC_DEVINT_ENUM ;
 int UDC_DEVINT_ES ;
 int UDC_DEVINT_SC ;
 int UDC_DEVINT_SI ;
 int UDC_DEVINT_SOF ;
 int UDC_DEVINT_SVC ;
 int UDC_DEVINT_UR ;
 int UDC_DEVINT_US ;
 int UDC_EPINT_MSK_DISABLE_ALL ;
 int writel (int,int *) ;

__attribute__((used)) static int udc_mask_unused_interrupts(struct udc *dev)
{
 u32 tmp;


 tmp = AMD_BIT(UDC_DEVINT_SVC) |
  AMD_BIT(UDC_DEVINT_ENUM) |
  AMD_BIT(UDC_DEVINT_US) |
  AMD_BIT(UDC_DEVINT_UR) |
  AMD_BIT(UDC_DEVINT_ES) |
  AMD_BIT(UDC_DEVINT_SI) |
  AMD_BIT(UDC_DEVINT_SOF)|
  AMD_BIT(UDC_DEVINT_SC);
 writel(tmp, &dev->regs->irqmsk);


 writel(UDC_EPINT_MSK_DISABLE_ALL, &dev->regs->ep_irqmsk);

 return 0;
}

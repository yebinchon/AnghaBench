
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int speed; } ;
struct udc {scalar_t__ data_ep_queued; scalar_t__ data_ep_enabled; TYPE_2__* regs; TYPE_1__ gadget; } ;
struct TYPE_4__ {int cfg; int ctl; } ;


 int AMD_BIT (int ) ;
 int AMD_UNMASK_BIT (int ) ;
 int DBG (struct udc*,char*) ;
 int UDC_DEVCFG_CSR_PRG ;
 int UDC_DEVCFG_RWKP ;
 int UDC_DEVCFG_SP ;
 int UDC_DEVCTL_RDE ;
 int UDC_DEVCTL_TDE ;
 int USB_SPEED_UNKNOWN ;
 scalar_t__ jiffies ;
 int make_ep_lists (struct udc*) ;
 int mod_timer (int *,scalar_t__) ;
 int readl (int *) ;
 scalar_t__ set_rde ;
 scalar_t__ timer_pending (int *) ;
 int udc_pollstall_timer ;
 int udc_timer ;
 int writel (int ,int *) ;

__attribute__((used)) static void udc_basic_init(struct udc *dev)
{
 u32 tmp;

 DBG(dev, "udc_basic_init()\n");

 dev->gadget.speed = USB_SPEED_UNKNOWN;


 if (timer_pending(&udc_timer)) {
  set_rde = 0;
  mod_timer(&udc_timer, jiffies - 1);
 }

 if (timer_pending(&udc_pollstall_timer)) {
  mod_timer(&udc_pollstall_timer, jiffies - 1);
 }

 tmp = readl(&dev->regs->ctl);
 tmp &= AMD_UNMASK_BIT(UDC_DEVCTL_RDE);
 tmp &= AMD_UNMASK_BIT(UDC_DEVCTL_TDE);
 writel(tmp, &dev->regs->ctl);


 tmp = readl(&dev->regs->cfg);
 tmp |= AMD_BIT(UDC_DEVCFG_CSR_PRG);

 tmp |= AMD_BIT(UDC_DEVCFG_SP);

 tmp |= AMD_BIT(UDC_DEVCFG_RWKP);
 writel(tmp, &dev->regs->cfg);

 make_ep_lists(dev);

 dev->data_ep_enabled = 0;
 dev->data_ep_queued = 0;
}

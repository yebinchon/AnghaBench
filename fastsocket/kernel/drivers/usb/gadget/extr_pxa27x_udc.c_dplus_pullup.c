
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pxa_udc {int pullup_on; TYPE_1__* mach; } ;
struct TYPE_2__ {int gpio_pullup_inverted; int (* udc_command ) (int ) ;int gpio_pullup; } ;


 int PXA2XX_UDC_CMD_CONNECT ;
 int PXA2XX_UDC_CMD_DISCONNECT ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value (int ,int) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static void dplus_pullup(struct pxa_udc *udc, int on)
{
 if (on) {
  if (gpio_is_valid(udc->mach->gpio_pullup))
   gpio_set_value(udc->mach->gpio_pullup,
           !udc->mach->gpio_pullup_inverted);
  if (udc->mach->udc_command)
   udc->mach->udc_command(PXA2XX_UDC_CMD_CONNECT);
 } else {
  if (gpio_is_valid(udc->mach->gpio_pullup))
   gpio_set_value(udc->mach->gpio_pullup,
           udc->mach->gpio_pullup_inverted);
  if (udc->mach->udc_command)
   udc->mach->udc_command(PXA2XX_UDC_CMD_DISCONNECT);
 }
 udc->pullup_on = on;
}

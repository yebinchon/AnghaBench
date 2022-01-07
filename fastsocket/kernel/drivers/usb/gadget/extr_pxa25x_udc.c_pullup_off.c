
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pxa2xx_udc_mach_info {int gpio_pullup_inverted; int (* udc_command ) (int ) ;int gpio_pullup; } ;
struct TYPE_2__ {struct pxa2xx_udc_mach_info* mach; } ;


 int PXA2XX_UDC_CMD_DISCONNECT ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value (int ,int) ;
 int stub1 (int ) ;
 TYPE_1__* the_controller ;

__attribute__((used)) static void pullup_off(void)
{
 struct pxa2xx_udc_mach_info *mach = the_controller->mach;
 int off_level = mach->gpio_pullup_inverted;

 if (gpio_is_valid(mach->gpio_pullup))
  gpio_set_value(mach->gpio_pullup, off_level);
 else if (mach->udc_command)
  mach->udc_command(PXA2XX_UDC_CMD_DISCONNECT);
}

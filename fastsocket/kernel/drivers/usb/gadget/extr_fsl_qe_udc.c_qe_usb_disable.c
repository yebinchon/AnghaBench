
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* usb_regs; } ;
struct TYPE_3__ {int usb_usmod; } ;


 int USB_MODE_EN ;
 int clrbits8 (int *,int ) ;
 TYPE_2__* udc_controller ;

__attribute__((used)) static inline void qe_usb_disable(void)
{
 clrbits8(&udc_controller->usb_regs->usb_usmod, USB_MODE_EN);
}

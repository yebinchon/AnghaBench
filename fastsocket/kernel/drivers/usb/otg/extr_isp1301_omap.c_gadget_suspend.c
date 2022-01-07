
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* gadget; } ;
struct isp1301 {TYPE_1__ otg; } ;
struct TYPE_4__ {scalar_t__ a_alt_hnp_support; scalar_t__ a_hnp_support; scalar_t__ b_hnp_enable; } ;


 int usb_gadget_vbus_disconnect (TYPE_2__*) ;

__attribute__((used)) static int gadget_suspend(struct isp1301 *isp)
{
 isp->otg.gadget->b_hnp_enable = 0;
 isp->otg.gadget->a_hnp_support = 0;
 isp->otg.gadget->a_alt_hnp_support = 0;
 return usb_gadget_vbus_disconnect(isp->otg.gadget);
}

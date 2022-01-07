
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_function {int dummy; } ;
struct TYPE_4__ {TYPE_1__* in_ep; } ;
struct f_ecm {unsigned int ctrl_id; TYPE_2__ port; } ;
struct TYPE_3__ {scalar_t__ driver_data; } ;


 struct f_ecm* func_to_ecm (struct usb_function*) ;

__attribute__((used)) static int ecm_get_alt(struct usb_function *f, unsigned intf)
{
 struct f_ecm *ecm = func_to_ecm(f);

 if (intf == ecm->ctrl_id)
  return 0;
 return ecm->port.in_ep->driver_data ? 1 : 0;
}

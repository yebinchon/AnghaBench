
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_function {int dummy; } ;
struct TYPE_4__ {TYPE_1__* in; } ;
struct f_obex {unsigned int ctrl_id; TYPE_2__ port; } ;
struct TYPE_3__ {scalar_t__ driver_data; } ;


 struct f_obex* func_to_obex (struct usb_function*) ;

__attribute__((used)) static int obex_get_alt(struct usb_function *f, unsigned intf)
{
 struct f_obex *obex = func_to_obex(f);

 if (intf == obex->ctrl_id)
  return 0;

 return obex->port.in->driver_data ? 1 : 0;
}

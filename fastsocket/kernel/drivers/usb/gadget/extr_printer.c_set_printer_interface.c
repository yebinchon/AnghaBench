
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct printer_dev {int * out; int * in; TYPE_1__* out_ep; TYPE_1__* in_ep; int gadget; } ;
struct TYPE_3__ {int name; struct printer_dev* driver_data; } ;


 int DBG (struct printer_dev*,char*,int ,int) ;
 void* ep_desc (int ,int *,int *) ;
 int fs_ep_in_desc ;
 int fs_ep_out_desc ;
 int hs_ep_in_desc ;
 int hs_ep_out_desc ;
 int usb_ep_disable (TYPE_1__*) ;
 int usb_ep_enable (TYPE_1__*,int *) ;

__attribute__((used)) static int
set_printer_interface(struct printer_dev *dev)
{
 int result = 0;

 dev->in = ep_desc(dev->gadget, &hs_ep_in_desc, &fs_ep_in_desc);
 dev->in_ep->driver_data = dev;

 dev->out = ep_desc(dev->gadget, &hs_ep_out_desc, &fs_ep_out_desc);
 dev->out_ep->driver_data = dev;

 result = usb_ep_enable(dev->in_ep, dev->in);
 if (result != 0) {
  DBG(dev, "enable %s --> %d\n", dev->in_ep->name, result);
  goto done;
 }

 result = usb_ep_enable(dev->out_ep, dev->out);
 if (result != 0) {
  DBG(dev, "enable %s --> %d\n", dev->in_ep->name, result);
  goto done;
 }

done:

 if (result != 0) {
  (void) usb_ep_disable(dev->in_ep);
  (void) usb_ep_disable(dev->out_ep);
  dev->in = ((void*)0);
  dev->out = ((void*)0);
 }


 return result;
}

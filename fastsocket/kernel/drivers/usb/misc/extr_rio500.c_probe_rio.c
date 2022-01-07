
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int devnum; } ;
struct rio_usb_data {int present; int lock; void* ibuf; void* obuf; struct usb_device* rio_dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IBUF_SIZE ;
 int OBUF_SIZE ;
 int dbg (char*,void*) ;
 int dev_info (int *,char*,int ) ;
 int err (char*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (void*) ;
 void* kmalloc (int ,int ) ;
 int mutex_init (int *) ;
 struct rio_usb_data rio_instance ;
 int usb_deregister_dev (struct usb_interface*,int *) ;
 int usb_register_dev (struct usb_interface*,int *) ;
 int usb_rio_class ;
 int usb_set_intfdata (struct usb_interface*,struct rio_usb_data*) ;

__attribute__((used)) static int probe_rio(struct usb_interface *intf,
       const struct usb_device_id *id)
{
 struct usb_device *dev = interface_to_usbdev(intf);
 struct rio_usb_data *rio = &rio_instance;
 int retval;

 dev_info(&intf->dev, "USB Rio found at address %d\n", dev->devnum);

 retval = usb_register_dev(intf, &usb_rio_class);
 if (retval) {
  err("Not able to get a minor for this device.");
  return -ENOMEM;
 }

 rio->rio_dev = dev;

 if (!(rio->obuf = kmalloc(OBUF_SIZE, GFP_KERNEL))) {
  err("probe_rio: Not enough memory for the output buffer");
  usb_deregister_dev(intf, &usb_rio_class);
  return -ENOMEM;
 }
 dbg("probe_rio: obuf address:%p", rio->obuf);

 if (!(rio->ibuf = kmalloc(IBUF_SIZE, GFP_KERNEL))) {
  err("probe_rio: Not enough memory for the input buffer");
  usb_deregister_dev(intf, &usb_rio_class);
  kfree(rio->obuf);
  return -ENOMEM;
 }
 dbg("probe_rio: ibuf address:%p", rio->ibuf);

 mutex_init(&(rio->lock));

 usb_set_intfdata (intf, rio);
 rio->present = 1;

 return 0;
}

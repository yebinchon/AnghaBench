
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {int dev; struct usb_host_interface* altsetting; } ;
struct usb_idmouse {int bulk_in_size; int present; scalar_t__ bulk_in_endpointAddr; int bulk_in_buffer; int orig_bi_size; struct usb_interface* interface; struct usb_device* udev; int lock; } ;
struct TYPE_3__ {int bInterfaceClass; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {scalar_t__ bEndpointAddress; int wMaxPacketSize; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct TYPE_4__ {struct usb_endpoint_descriptor desc; } ;


 int DRIVER_DESC ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IMGSIZE ;
 int dev_info (int *,char*,int ) ;
 int err (char*) ;
 int idmouse_class ;
 int idmouse_delete (struct usb_idmouse*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kmalloc (scalar_t__,int ) ;
 struct usb_idmouse* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int mutex_init (int *) ;
 scalar_t__ usb_endpoint_is_bulk_in (struct usb_endpoint_descriptor*) ;
 int usb_register_dev (struct usb_interface*,int *) ;
 int usb_set_intfdata (struct usb_interface*,struct usb_idmouse*) ;

__attribute__((used)) static int idmouse_probe(struct usb_interface *interface,
    const struct usb_device_id *id)
{
 struct usb_device *udev = interface_to_usbdev(interface);
 struct usb_idmouse *dev;
 struct usb_host_interface *iface_desc;
 struct usb_endpoint_descriptor *endpoint;
 int result;


 iface_desc = &interface->altsetting[0];
 if (iface_desc->desc.bInterfaceClass != 0x0A)
  return -ENODEV;


 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (dev == ((void*)0))
  return -ENOMEM;

 mutex_init(&dev->lock);
 dev->udev = udev;
 dev->interface = interface;


 endpoint = &iface_desc->endpoint[0].desc;
 if (!dev->bulk_in_endpointAddr && usb_endpoint_is_bulk_in(endpoint)) {

  dev->orig_bi_size = le16_to_cpu(endpoint->wMaxPacketSize);
  dev->bulk_in_size = 0x200;
  dev->bulk_in_endpointAddr = endpoint->bEndpointAddress;
  dev->bulk_in_buffer =
   kmalloc(IMGSIZE + dev->bulk_in_size, GFP_KERNEL);

  if (!dev->bulk_in_buffer) {
   err("Unable to allocate input buffer.");
   idmouse_delete(dev);
   return -ENOMEM;
  }
 }

 if (!(dev->bulk_in_endpointAddr)) {
  err("Unable to find bulk-in endpoint.");
  idmouse_delete(dev);
  return -ENODEV;
 }

 dev->present = 1;


 usb_set_intfdata(interface, dev);
 result = usb_register_dev(interface, &idmouse_class);
 if (result) {

  err("Unble to allocate minor number.");
  usb_set_intfdata(interface, ((void*)0));
  idmouse_delete(dev);
  return result;
 }


 dev_info(&interface->dev,"%s now attached\n",DRIVER_DESC);

 return 0;
}

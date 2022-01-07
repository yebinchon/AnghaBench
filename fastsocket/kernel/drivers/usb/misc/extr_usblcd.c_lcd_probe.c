
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_lcd {size_t bulk_in_size; int kref; TYPE_4__* udev; scalar_t__ bulk_out_endpointAddr; scalar_t__ bulk_in_endpointAddr; int bulk_in_buffer; struct usb_interface* interface; int submitted; int limit_sem; } ;
struct usb_interface {int minor; int dev; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_5__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {scalar_t__ bEndpointAddress; int wMaxPacketSize; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_7__ {int bcdDevice; int idProduct; } ;
struct TYPE_8__ {int devnum; TYPE_3__ descriptor; } ;
struct TYPE_6__ {struct usb_endpoint_descriptor desc; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_LCD_CONCURRENT_WRITES ;
 int dev_info (int *,char*,int,...) ;
 int dev_warn (int *,char*) ;
 int err (char*) ;
 int init_usb_anchor (int *) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kmalloc (size_t,int ) ;
 int kref_init (int *) ;
 int kref_put (int *,int ) ;
 struct usb_lcd* kzalloc (int,int ) ;
 int lcd_class ;
 int lcd_delete ;
 int le16_to_cpu (int ) ;
 int sema_init (int *,int ) ;
 scalar_t__ usb_endpoint_is_bulk_in (struct usb_endpoint_descriptor*) ;
 scalar_t__ usb_endpoint_is_bulk_out (struct usb_endpoint_descriptor*) ;
 TYPE_4__* usb_get_dev (int ) ;
 int usb_register_dev (struct usb_interface*,int *) ;
 int usb_set_intfdata (struct usb_interface*,struct usb_lcd*) ;

__attribute__((used)) static int lcd_probe(struct usb_interface *interface, const struct usb_device_id *id)
{
 struct usb_lcd *dev = ((void*)0);
 struct usb_host_interface *iface_desc;
 struct usb_endpoint_descriptor *endpoint;
 size_t buffer_size;
 int i;
 int retval = -ENOMEM;


 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (dev == ((void*)0)) {
  err("Out of memory");
  goto error;
 }
 kref_init(&dev->kref);
 sema_init(&dev->limit_sem, USB_LCD_CONCURRENT_WRITES);
 init_usb_anchor(&dev->submitted);

 dev->udev = usb_get_dev(interface_to_usbdev(interface));
 dev->interface = interface;

 if (le16_to_cpu(dev->udev->descriptor.idProduct) != 0x0001) {
  dev_warn(&interface->dev, "USBLCD model not supported.\n");
  retval = -ENODEV;
  goto error;
 }



 iface_desc = interface->cur_altsetting;
 for (i = 0; i < iface_desc->desc.bNumEndpoints; ++i) {
  endpoint = &iface_desc->endpoint[i].desc;

  if (!dev->bulk_in_endpointAddr &&
      usb_endpoint_is_bulk_in(endpoint)) {

   buffer_size = le16_to_cpu(endpoint->wMaxPacketSize);
   dev->bulk_in_size = buffer_size;
   dev->bulk_in_endpointAddr = endpoint->bEndpointAddress;
   dev->bulk_in_buffer = kmalloc(buffer_size, GFP_KERNEL);
   if (!dev->bulk_in_buffer) {
    err("Could not allocate bulk_in_buffer");
    goto error;
   }
  }

  if (!dev->bulk_out_endpointAddr &&
      usb_endpoint_is_bulk_out(endpoint)) {

   dev->bulk_out_endpointAddr = endpoint->bEndpointAddress;
  }
 }
 if (!(dev->bulk_in_endpointAddr && dev->bulk_out_endpointAddr)) {
  err("Could not find both bulk-in and bulk-out endpoints");
  goto error;
 }


 usb_set_intfdata(interface, dev);


 retval = usb_register_dev(interface, &lcd_class);
 if (retval) {

  err("Not able to get a minor for this device.");
  usb_set_intfdata(interface, ((void*)0));
  goto error;
 }

 i = le16_to_cpu(dev->udev->descriptor.bcdDevice);

 dev_info(&interface->dev, "USBLCD Version %1d%1d.%1d%1d found "
   "at address %d\n", (i & 0xF000)>>12, (i & 0xF00)>>8,
   (i & 0xF0)>>4,(i & 0xF), dev->udev->devnum);


 dev_info(&interface->dev, "USB LCD device now attached to USBLCD-%d\n",
   interface->minor);
 return 0;

error:
 if (dev)
  kref_put(&dev->kref, lcd_delete);
 return retval;
}

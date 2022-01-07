
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_skel {size_t bulk_in_size; int kref; scalar_t__ bulk_out_endpointAddr; scalar_t__ bulk_in_endpointAddr; int bulk_in_urb; int bulk_in_buffer; struct usb_interface* interface; int udev; int bulk_in_completion; int submitted; int err_lock; int io_mutex; int limit_sem; } ;
struct usb_interface {int minor; int dev; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_3__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {scalar_t__ bEndpointAddress; int wMaxPacketSize; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_4__ {struct usb_endpoint_descriptor desc; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int WRITES_IN_FLIGHT ;
 int dev_info (int *,char*,int ) ;
 int err (char*) ;
 int init_completion (int *) ;
 int init_usb_anchor (int *) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kmalloc (size_t,int ) ;
 int kref_init (int *) ;
 int kref_put (int *,int ) ;
 struct usb_skel* kzalloc (int,int ) ;
 size_t le16_to_cpu (int ) ;
 int mutex_init (int *) ;
 int sema_init (int *,int ) ;
 int skel_class ;
 int skel_delete ;
 int spin_lock_init (int *) ;
 int usb_alloc_urb (int ,int ) ;
 scalar_t__ usb_endpoint_is_bulk_in (struct usb_endpoint_descriptor*) ;
 scalar_t__ usb_endpoint_is_bulk_out (struct usb_endpoint_descriptor*) ;
 int usb_get_dev (int ) ;
 int usb_register_dev (struct usb_interface*,int *) ;
 int usb_set_intfdata (struct usb_interface*,struct usb_skel*) ;

__attribute__((used)) static int skel_probe(struct usb_interface *interface,
        const struct usb_device_id *id)
{
 struct usb_skel *dev;
 struct usb_host_interface *iface_desc;
 struct usb_endpoint_descriptor *endpoint;
 size_t buffer_size;
 int i;
 int retval = -ENOMEM;


 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev) {
  err("Out of memory");
  goto error;
 }
 kref_init(&dev->kref);
 sema_init(&dev->limit_sem, WRITES_IN_FLIGHT);
 mutex_init(&dev->io_mutex);
 spin_lock_init(&dev->err_lock);
 init_usb_anchor(&dev->submitted);
 init_completion(&dev->bulk_in_completion);

 dev->udev = usb_get_dev(interface_to_usbdev(interface));
 dev->interface = interface;



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
   dev->bulk_in_urb = usb_alloc_urb(0, GFP_KERNEL);
   if (!dev->bulk_in_urb) {
    err("Could not allocate bulk_in_urb");
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


 retval = usb_register_dev(interface, &skel_class);
 if (retval) {

  err("Not able to get a minor for this device.");
  usb_set_intfdata(interface, ((void*)0));
  goto error;
 }


 dev_info(&interface->dev,
   "USB Skeleton device now attached to USBSkel-%d",
   interface->minor);
 return 0;

error:
 if (dev)

  kref_put(&dev->kref, skel_delete);
 return retval;
}

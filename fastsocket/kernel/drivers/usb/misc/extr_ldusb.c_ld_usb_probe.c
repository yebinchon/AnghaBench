
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_interface {scalar_t__ minor; int dev; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_4__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {scalar_t__ bInterval; int wMaxPacketSize; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_6__ {int bMaxPacketSize0; int bcdDevice; int idProduct; int idVendor; } ;
struct usb_device {TYPE_3__ descriptor; } ;
struct ld_usb {int interrupt_in_endpoint_size; int interrupt_out_endpoint_size; struct usb_endpoint_descriptor* interrupt_out_endpoint; scalar_t__ interrupt_out_interval; struct usb_endpoint_descriptor* interrupt_in_endpoint; scalar_t__ interrupt_in_interval; void* interrupt_out_urb; void* interrupt_out_buffer; void* interrupt_in_urb; void* interrupt_in_buffer; void* ring_buffer; int write_wait; int read_wait; struct usb_interface* intf; int rbsl; int mutex; } ;
struct TYPE_5__ {struct usb_endpoint_descriptor desc; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_DEVICE_ID_LD_CASSY ;
 int USB_DEVICE_ID_LD_COM3LAB ;
 scalar_t__ USB_LD_MINOR_BASE ;
 int USB_MAJOR ;
 int USB_VENDOR_ID_LD ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,scalar_t__,int ,scalar_t__) ;
 int dev_warn (int *,char*) ;
 int init_waitqueue_head (int *) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (char*) ;
 void* kmalloc (int,int ) ;
 struct ld_usb* kzalloc (int,int ) ;
 int ld_usb_class ;
 int ld_usb_delete (struct ld_usb*) ;
 int le16_to_cpu (int ) ;
 scalar_t__ min_interrupt_in_interval ;
 scalar_t__ min_interrupt_out_interval ;
 int mutex_init (int *) ;
 int ring_buffer_size ;
 int spin_lock_init (int *) ;
 void* usb_alloc_urb (int ,int ) ;
 scalar_t__ usb_endpoint_is_int_in (struct usb_endpoint_descriptor*) ;
 scalar_t__ usb_endpoint_is_int_out (struct usb_endpoint_descriptor*) ;
 int usb_register_dev (struct usb_interface*,int *) ;
 int usb_set_intfdata (struct usb_interface*,struct ld_usb*) ;
 int usb_string (struct usb_device*,int,char*,int) ;
 int write_buffer_size ;

__attribute__((used)) static int ld_usb_probe(struct usb_interface *intf, const struct usb_device_id *id)
{
 struct usb_device *udev = interface_to_usbdev(intf);
 struct ld_usb *dev = ((void*)0);
 struct usb_host_interface *iface_desc;
 struct usb_endpoint_descriptor *endpoint;
 char *buffer;
 int i;
 int retval = -ENOMEM;



 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (dev == ((void*)0)) {
  dev_err(&intf->dev, "Out of memory\n");
  goto exit;
 }
 mutex_init(&dev->mutex);
 spin_lock_init(&dev->rbsl);
 dev->intf = intf;
 init_waitqueue_head(&dev->read_wait);
 init_waitqueue_head(&dev->write_wait);


 if ((le16_to_cpu(udev->descriptor.idVendor) == USB_VENDOR_ID_LD) &&
     ((le16_to_cpu(udev->descriptor.idProduct) == USB_DEVICE_ID_LD_CASSY) ||
      (le16_to_cpu(udev->descriptor.idProduct) == USB_DEVICE_ID_LD_COM3LAB)) &&
     (le16_to_cpu(udev->descriptor.bcdDevice) <= 0x103)) {
  buffer = kmalloc(256, GFP_KERNEL);
  if (buffer == ((void*)0)) {
   dev_err(&intf->dev, "Couldn't allocate string buffer\n");
   goto error;
  }

  usb_string(udev, 255, buffer, 256);
  kfree(buffer);
 }

 iface_desc = intf->cur_altsetting;


 for (i = 0; i < iface_desc->desc.bNumEndpoints; ++i) {
  endpoint = &iface_desc->endpoint[i].desc;

  if (usb_endpoint_is_int_in(endpoint))
   dev->interrupt_in_endpoint = endpoint;

  if (usb_endpoint_is_int_out(endpoint))
   dev->interrupt_out_endpoint = endpoint;
 }
 if (dev->interrupt_in_endpoint == ((void*)0)) {
  dev_err(&intf->dev, "Interrupt in endpoint not found\n");
  goto error;
 }
 if (dev->interrupt_out_endpoint == ((void*)0))
  dev_warn(&intf->dev, "Interrupt out endpoint not found (using control endpoint instead)\n");

 dev->interrupt_in_endpoint_size = le16_to_cpu(dev->interrupt_in_endpoint->wMaxPacketSize);
 dev->ring_buffer = kmalloc(ring_buffer_size*(sizeof(size_t)+dev->interrupt_in_endpoint_size), GFP_KERNEL);
 if (!dev->ring_buffer) {
  dev_err(&intf->dev, "Couldn't allocate ring_buffer\n");
  goto error;
 }
 dev->interrupt_in_buffer = kmalloc(dev->interrupt_in_endpoint_size, GFP_KERNEL);
 if (!dev->interrupt_in_buffer) {
  dev_err(&intf->dev, "Couldn't allocate interrupt_in_buffer\n");
  goto error;
 }
 dev->interrupt_in_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!dev->interrupt_in_urb) {
  dev_err(&intf->dev, "Couldn't allocate interrupt_in_urb\n");
  goto error;
 }
 dev->interrupt_out_endpoint_size = dev->interrupt_out_endpoint ? le16_to_cpu(dev->interrupt_out_endpoint->wMaxPacketSize) :
          udev->descriptor.bMaxPacketSize0;
 dev->interrupt_out_buffer = kmalloc(write_buffer_size*dev->interrupt_out_endpoint_size, GFP_KERNEL);
 if (!dev->interrupt_out_buffer) {
  dev_err(&intf->dev, "Couldn't allocate interrupt_out_buffer\n");
  goto error;
 }
 dev->interrupt_out_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!dev->interrupt_out_urb) {
  dev_err(&intf->dev, "Couldn't allocate interrupt_out_urb\n");
  goto error;
 }
 dev->interrupt_in_interval = min_interrupt_in_interval > dev->interrupt_in_endpoint->bInterval ? min_interrupt_in_interval : dev->interrupt_in_endpoint->bInterval;
 if (dev->interrupt_out_endpoint)
  dev->interrupt_out_interval = min_interrupt_out_interval > dev->interrupt_out_endpoint->bInterval ? min_interrupt_out_interval : dev->interrupt_out_endpoint->bInterval;


 usb_set_intfdata(intf, dev);

 retval = usb_register_dev(intf, &ld_usb_class);
 if (retval) {

  dev_err(&intf->dev, "Not able to get a minor for this device.\n");
  usb_set_intfdata(intf, ((void*)0));
  goto error;
 }


 dev_info(&intf->dev, "LD USB Device #%d now attached to major %d minor %d\n",
  (intf->minor - USB_LD_MINOR_BASE), USB_MAJOR, intf->minor);

exit:
 return retval;

error:
 ld_usb_delete(dev);

 return retval;
}

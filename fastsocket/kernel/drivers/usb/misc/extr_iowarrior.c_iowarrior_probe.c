
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_interface {int dev; scalar_t__ minor; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_6__ {int bNumEndpoints; scalar_t__ bInterfaceNumber; } ;
struct usb_host_interface {TYPE_3__ desc; TYPE_1__* endpoint; } ;
struct usb_endpoint_descriptor {int bInterval; int bEndpointAddress; int wMaxPacketSize; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_5__ {int iSerialNumber; int idProduct; } ;
struct usb_device {TYPE_2__ descriptor; } ;
struct iowarrior {scalar_t__ product_id; int report_size; int present; scalar_t__ minor; int chip_serial; struct usb_interface* interface; void* read_queue; struct usb_endpoint_descriptor* int_in_endpoint; void* int_in_buffer; struct usb_device* udev; int int_in_urb; struct usb_endpoint_descriptor* int_out_endpoint; int write_wait; int write_busy; int read_wait; int overflow_flag; int intr_idx_lock; int read_idx; int intr_idx; int mutex; } ;
struct TYPE_4__ {struct usb_endpoint_descriptor desc; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IOWARRIOR_MINOR_BASE ;
 int MAX_INTERRUPT_BUFFER ;
 int USB_CTRL_SET_TIMEOUT ;
 scalar_t__ USB_DEVICE_ID_CODEMERCS_IOW56 ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int atomic_set (int *,int ) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,scalar_t__,int ,scalar_t__,scalar_t__) ;
 int init_waitqueue_head (int *) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int iowarrior_callback ;
 int iowarrior_class ;
 int iowarrior_delete (struct iowarrior*) ;
 void* kmalloc (int,int ) ;
 struct iowarrior* kzalloc (int,int ) ;
 void* le16_to_cpu (int ) ;
 int memset (int ,int,int) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int strlen (int ) ;
 int usb_alloc_urb (int ,int ) ;
 int usb_control_msg (struct usb_device*,int ,int,int,int ,int ,int *,int ,int ) ;
 scalar_t__ usb_endpoint_is_int_in (struct usb_endpoint_descriptor*) ;
 scalar_t__ usb_endpoint_is_int_out (struct usb_endpoint_descriptor*) ;
 int usb_fill_int_urb (int ,struct usb_device*,int ,void*,int,int ,struct iowarrior*,int ) ;
 int usb_rcvintpipe (struct usb_device*,int ) ;
 int usb_register_dev (struct usb_interface*,int *) ;
 int usb_set_intfdata (struct usb_interface*,struct iowarrior*) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;
 int usb_string (struct usb_device*,int ,int ,int) ;

__attribute__((used)) static int iowarrior_probe(struct usb_interface *interface,
      const struct usb_device_id *id)
{
 struct usb_device *udev = interface_to_usbdev(interface);
 struct iowarrior *dev = ((void*)0);
 struct usb_host_interface *iface_desc;
 struct usb_endpoint_descriptor *endpoint;
 int i;
 int retval = -ENOMEM;


 dev = kzalloc(sizeof(struct iowarrior), GFP_KERNEL);
 if (dev == ((void*)0)) {
  dev_err(&interface->dev, "Out of memory\n");
  return retval;
 }

 mutex_init(&dev->mutex);

 atomic_set(&dev->intr_idx, 0);
 atomic_set(&dev->read_idx, 0);
 spin_lock_init(&dev->intr_idx_lock);
 atomic_set(&dev->overflow_flag, 0);
 init_waitqueue_head(&dev->read_wait);
 atomic_set(&dev->write_busy, 0);
 init_waitqueue_head(&dev->write_wait);

 dev->udev = udev;
 dev->interface = interface;

 iface_desc = interface->cur_altsetting;
 dev->product_id = le16_to_cpu(udev->descriptor.idProduct);


 for (i = 0; i < iface_desc->desc.bNumEndpoints; ++i) {
  endpoint = &iface_desc->endpoint[i].desc;

  if (usb_endpoint_is_int_in(endpoint))
   dev->int_in_endpoint = endpoint;
  if (usb_endpoint_is_int_out(endpoint))

   dev->int_out_endpoint = endpoint;
 }

 dev->report_size = le16_to_cpu(dev->int_in_endpoint->wMaxPacketSize);
 if ((dev->interface->cur_altsetting->desc.bInterfaceNumber == 0) &&
     (dev->product_id == USB_DEVICE_ID_CODEMERCS_IOW56))

  dev->report_size = 7;


 dev->int_in_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!dev->int_in_urb) {
  dev_err(&interface->dev, "Couldn't allocate interrupt_in_urb\n");
  goto error;
 }
 dev->int_in_buffer = kmalloc(dev->report_size, GFP_KERNEL);
 if (!dev->int_in_buffer) {
  dev_err(&interface->dev, "Couldn't allocate int_in_buffer\n");
  goto error;
 }
 usb_fill_int_urb(dev->int_in_urb, dev->udev,
    usb_rcvintpipe(dev->udev,
     dev->int_in_endpoint->bEndpointAddress),
    dev->int_in_buffer, dev->report_size,
    iowarrior_callback, dev,
    dev->int_in_endpoint->bInterval);

 dev->read_queue =
     kmalloc(((dev->report_size + 1) * MAX_INTERRUPT_BUFFER),
      GFP_KERNEL);
 if (!dev->read_queue) {
  dev_err(&interface->dev, "Couldn't allocate read_queue\n");
  goto error;
 }

 memset(dev->chip_serial, 0x00, sizeof(dev->chip_serial));
 usb_string(udev, udev->descriptor.iSerialNumber, dev->chip_serial,
     sizeof(dev->chip_serial));
 if (strlen(dev->chip_serial) != 8)
  memset(dev->chip_serial, 0x00, sizeof(dev->chip_serial));


 if (dev->interface->cur_altsetting->desc.bInterfaceNumber == 0) {
     usb_control_msg(udev, usb_sndctrlpipe(udev, 0),
       0x0A,
       USB_TYPE_CLASS | USB_RECIP_INTERFACE, 0,
       0, ((void*)0), 0, USB_CTRL_SET_TIMEOUT);
 }

 dev->present = 1;


 usb_set_intfdata(interface, dev);

 retval = usb_register_dev(interface, &iowarrior_class);
 if (retval) {

  dev_err(&interface->dev, "Not able to get a minor for this device.\n");
  usb_set_intfdata(interface, ((void*)0));
  goto error;
 }

 dev->minor = interface->minor;


 dev_info(&interface->dev, "IOWarrior product=0x%x, serial=%s interface=%d "
   "now attached to iowarrior%d\n", dev->product_id, dev->chip_serial,
   iface_desc->desc.bInterfaceNumber, dev->minor - IOWARRIOR_MINOR_BASE);
 return retval;

error:
 iowarrior_delete(dev);
 return retval;
}

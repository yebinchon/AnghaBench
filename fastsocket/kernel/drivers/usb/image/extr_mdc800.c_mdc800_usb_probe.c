
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct usb_interface {int dev; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_10__ {int bInterfaceClass; scalar_t__ bInterfaceSubClass; scalar_t__ bInterfaceProtocol; int bNumEndpoints; } ;
struct usb_host_interface {TYPE_3__* endpoint; TYPE_2__ desc; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_9__ {int bNumConfigurations; } ;
struct usb_device {TYPE_1__ descriptor; } ;
struct TYPE_13__ {int bEndpointAddress; int bInterval; } ;
struct TYPE_12__ {int* endpoint; int io_lock; int state; int download_urb_buffer; struct usb_device* dev; int download_urb; int write_urb_buffer; int write_urb; int irq_urb_buffer; int irq_urb; scalar_t__ open; } ;
struct TYPE_11__ {TYPE_7__ desc; } ;


 int ENODEV ;
 int READY ;
 int dbg (char*) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 TYPE_4__* mdc800 ;
 int mdc800_class ;
 int * mdc800_ed ;
 scalar_t__ mdc800_endpoint_equals (TYPE_7__*,int *) ;
 int mdc800_usb_download_notify ;
 int mdc800_usb_irq ;
 int mdc800_usb_write_notify ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_fill_bulk_urb (int ,struct usb_device*,int ,int ,int,int ,TYPE_4__*) ;
 int usb_fill_int_urb (int ,struct usb_device*,int ,int ,int,int ,TYPE_4__*,int) ;
 int usb_rcvbulkpipe (struct usb_device*,int) ;
 int usb_rcvintpipe (struct usb_device*,int) ;
 int usb_register_dev (struct usb_interface*,int *) ;
 int usb_set_intfdata (struct usb_interface*,TYPE_4__*) ;
 int usb_sndbulkpipe (struct usb_device*,int) ;

__attribute__((used)) static int mdc800_usb_probe (struct usb_interface *intf,
          const struct usb_device_id *id)
{
 int i,j;
 struct usb_host_interface *intf_desc;
 struct usb_device *dev = interface_to_usbdev (intf);
 int irq_interval=0;
 int retval;

 dbg ("(mdc800_usb_probe) called.");


 if (mdc800->dev != ((void*)0))
 {
  dev_warn(&intf->dev, "only one Mustek MDC800 is supported.\n");
  return -ENODEV;
 }

 if (dev->descriptor.bNumConfigurations != 1)
 {
  dev_err(&intf->dev,
   "probe fails -> wrong Number of Configuration\n");
  return -ENODEV;
 }
 intf_desc = intf->cur_altsetting;

 if (
   ( intf_desc->desc.bInterfaceClass != 0xff )
  || ( intf_desc->desc.bInterfaceSubClass != 0 )
  || ( intf_desc->desc.bInterfaceProtocol != 0 )
  || ( intf_desc->desc.bNumEndpoints != 4)
 )
 {
  dev_err(&intf->dev, "probe fails -> wrong Interface\n");
  return -ENODEV;
 }


 for (i=0; i<4; i++)
 {
  mdc800->endpoint[i]=-1;
  for (j=0; j<4; j++)
  {
   if (mdc800_endpoint_equals (&intf_desc->endpoint [j].desc,&mdc800_ed [i]))
   {
    mdc800->endpoint[i]=intf_desc->endpoint [j].desc.bEndpointAddress ;
    if (i==1)
    {
     irq_interval=intf_desc->endpoint [j].desc.bInterval;
    }
   }
  }
  if (mdc800->endpoint[i] == -1)
  {
   dev_err(&intf->dev, "probe fails -> Wrong Endpoints.\n");
   return -ENODEV;
  }
 }


 dev_info(&intf->dev, "Found Mustek MDC800 on USB.\n");

 mutex_lock(&mdc800->io_lock);

 retval = usb_register_dev(intf, &mdc800_class);
 if (retval) {
  dev_err(&intf->dev, "Not able to get a minor for this device.\n");
  mutex_unlock(&mdc800->io_lock);
  return -ENODEV;
 }

 mdc800->dev=dev;
 mdc800->open=0;


 usb_fill_int_urb (
  mdc800->irq_urb,
  mdc800->dev,
  usb_rcvintpipe (mdc800->dev,mdc800->endpoint [1]),
  mdc800->irq_urb_buffer,
  8,
  mdc800_usb_irq,
  mdc800,
  irq_interval
 );

 usb_fill_bulk_urb (
  mdc800->write_urb,
  mdc800->dev,
  usb_sndbulkpipe (mdc800->dev, mdc800->endpoint[0]),
  mdc800->write_urb_buffer,
  8,
  mdc800_usb_write_notify,
  mdc800
 );

 usb_fill_bulk_urb (
  mdc800->download_urb,
  mdc800->dev,
  usb_rcvbulkpipe (mdc800->dev, mdc800->endpoint [3]),
  mdc800->download_urb_buffer,
  64,
  mdc800_usb_download_notify,
  mdc800
 );

 mdc800->state=READY;

 mutex_unlock(&mdc800->io_lock);

 usb_set_intfdata(intf, mdc800);
 return 0;
}

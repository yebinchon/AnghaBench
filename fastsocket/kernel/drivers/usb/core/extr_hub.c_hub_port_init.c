
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct usb_hub {int tt; struct usb_device* hdev; } ;
struct usb_hcd {TYPE_2__* driver; } ;
struct usb_device_descriptor {int bMaxPacketSize0; int bDescriptorType; } ;
struct TYPE_8__ {int bMaxPacketSize0; void* bcdUSB; } ;
struct TYPE_10__ {void* wMaxPacketSize; } ;
struct TYPE_11__ {TYPE_3__ desc; } ;
struct usb_device {int speed; int devnum; int ttport; scalar_t__ wusb; int lpm_capable; TYPE_1__ descriptor; int dev; TYPE_4__ ep0; TYPE_7__* bus; scalar_t__ config; int * tt; int parent; } ;
typedef enum usb_device_speed { ____Placeholder_usb_device_speed } usb_device_speed ;
struct TYPE_14__ {int otg_port; TYPE_6__* controller; scalar_t__ b_hnp_enable; } ;
struct TYPE_13__ {TYPE_5__* driver; } ;
struct TYPE_12__ {int name; } ;
struct TYPE_9__ {int flags; int (* update_device ) (struct usb_hcd*,struct usb_device*) ;} ;
typedef int DEFINE_MUTEX ;


 int EINVAL ;
 int EMSGSIZE ;
 int ENODEV ;
 int ENOMEM ;
 int ENOMSG ;
 int EPROTO ;
 int GET_DESCRIPTOR_BUFSIZE ;
 int GET_DESCRIPTOR_TRIES ;
 int GFP_NOIO ;
 int HCD_USB3 ;
 unsigned int HUB_BH_RESET_TIME ;
 unsigned int HUB_LONG_RESET_TIME ;
 unsigned int HUB_ROOT_RESET_TIME ;
 unsigned int HUB_SHORT_RESET_TIME ;
 int SET_ADDRESS_TRIES ;
 int USB_DIR_IN ;
 int USB_DT_DEVICE ;
 int USB_DT_DEVICE_SIZE ;
 int USB_REQ_GET_DESCRIPTOR ;




 int USB_SPEED_UNKNOWN ;

 scalar_t__ USE_NEW_SCHEME (int) ;
 struct usb_hcd* bus_to_hcd (TYPE_7__*) ;
 void* cpu_to_le16 (int) ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,char*,...) ;
 int hub_port_disable (struct usb_hub*,int,int ) ;
 int hub_port_reset (struct usb_hub*,int,struct usb_device*,unsigned int,int) ;
 int hub_set_address (struct usb_device*,int) ;
 int initial_descriptor_timeout ;
 int kfree (struct usb_device_descriptor*) ;
 struct usb_device_descriptor* kmalloc (int ,int ) ;
 int le16_to_cpu (void*) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct usb_hcd*,struct usb_device*) ;
 int update_devnum (struct usb_device*,int) ;
 int usb_control_msg (struct usb_device*,int ,int ,int ,int,int ,struct usb_device_descriptor*,int ,int ) ;
 int usb_device_supports_lpm (struct usb_device*) ;
 int usb_ep0_reinit (struct usb_device*) ;
 int usb_get_bos_descriptor (struct usb_device*) ;
 int usb_get_device_descriptor (struct usb_device*,int) ;
 int usb_rcvaddr0pipe () ;
 int usb_set_lpm_parameters (struct usb_device*) ;

__attribute__((used)) static int
hub_port_init (struct usb_hub *hub, struct usb_device *udev, int port1,
  int retry_counter)
{
 static DEFINE_MUTEX(usb_address0_mutex);

 struct usb_device *hdev = hub->hdev;
 struct usb_hcd *hcd = bus_to_hcd(hdev->bus);
 int i, j, retval;
 unsigned delay = HUB_SHORT_RESET_TIME;
 enum usb_device_speed oldspeed = udev->speed;
 char *speed, *type;
 int devnum = udev->devnum;




 if (!hdev->parent) {
  delay = HUB_ROOT_RESET_TIME;
  if (port1 == hdev->bus->otg_port)
   hdev->bus->b_hnp_enable = 0;
 }



 if (oldspeed == 130)
  delay = HUB_LONG_RESET_TIME;

 mutex_lock(&usb_address0_mutex);



 retval = hub_port_reset(hub, port1, udev, delay, 0);
 if (retval < 0)
  goto fail;


 retval = -ENODEV;

 if (oldspeed != USB_SPEED_UNKNOWN && oldspeed != udev->speed) {
  dev_dbg(&udev->dev, "device reset changed speed!\n");
  goto fail;
 }
 oldspeed = udev->speed;






 switch (udev->speed) {
 case 129:
 case 128:
  udev->ep0.desc.wMaxPacketSize = cpu_to_le16(512);
  break;
 case 131:
  udev->ep0.desc.wMaxPacketSize = cpu_to_le16(64);
  break;
 case 132:




  udev->ep0.desc.wMaxPacketSize = cpu_to_le16(64);
  break;
 case 130:
  udev->ep0.desc.wMaxPacketSize = cpu_to_le16(8);
  break;
 default:
  goto fail;
 }

 type = "";
 switch (udev->speed) {
 case 130: speed = "low"; break;
 case 132: speed = "full"; break;
 case 131: speed = "high"; break;
 case 129:
    speed = "super";
    break;
 case 128:
    speed = "variable";
    type = "Wireless ";
    break;
 default: speed = "?"; break;
 }
 if (udev->speed != 129)
  dev_info(&udev->dev,
    "%s %s speed %sUSB device number %d using %s\n",
    (udev->config) ? "reset" : "new", speed, type,
    devnum, udev->bus->controller->driver->name);


 if (hdev->tt) {
  udev->tt = hdev->tt;
  udev->ttport = hdev->ttport;
 } else if (udev->speed != 131
   && hdev->speed == 131) {
  udev->tt = &hub->tt;
  udev->ttport = port1;
 }
 for (i = 0; i < GET_DESCRIPTOR_TRIES; (++i, msleep(100))) {
  if (USE_NEW_SCHEME(retry_counter) && !(hcd->driver->flags & HCD_USB3)) {
   struct usb_device_descriptor *buf;
   int r = 0;


   buf = kmalloc(64, GFP_NOIO);
   if (!buf) {
    retval = -ENOMEM;
    continue;
   }





   for (j = 0; j < 3; ++j) {
    buf->bMaxPacketSize0 = 0;
    r = usb_control_msg(udev, usb_rcvaddr0pipe(),
     USB_REQ_GET_DESCRIPTOR, USB_DIR_IN,
     USB_DT_DEVICE << 8, 0,
     buf, 64,
     initial_descriptor_timeout);
    switch (buf->bMaxPacketSize0) {
    case 8: case 16: case 32: case 64: case 255:
     if (buf->bDescriptorType ==
       USB_DT_DEVICE) {
      r = 0;
      break;
     }

    default:
     if (r == 0)
      r = -EPROTO;
     break;
    }
    if (r == 0)
     break;
   }
   udev->descriptor.bMaxPacketSize0 =
     buf->bMaxPacketSize0;
   kfree(buf);

   retval = hub_port_reset(hub, port1, udev, delay, 0);
   if (retval < 0)
    goto fail;
   if (oldspeed != udev->speed) {
    dev_dbg(&udev->dev,
     "device reset changed speed!\n");
    retval = -ENODEV;
    goto fail;
   }
   if (r) {
    dev_err(&udev->dev,
     "device descriptor read/64, error %d\n",
     r);
    retval = -EMSGSIZE;
    continue;
   }

  }






  if (udev->wusb == 0) {
   for (j = 0; j < SET_ADDRESS_TRIES; ++j) {
    retval = hub_set_address(udev, devnum);
    if (retval >= 0)
     break;
    msleep(200);
   }
   if (retval < 0) {
    dev_err(&udev->dev,
     "device not accepting address %d, error %d\n",
     devnum, retval);
    goto fail;
   }
   if (udev->speed == 129) {
    devnum = udev->devnum;
    dev_info(&udev->dev,
      "%s SuperSpeed USB device number %d using %s\n",
      (udev->config) ? "reset" : "new",
      devnum, udev->bus->controller->driver->name);
   }





   msleep(10);
   if (USE_NEW_SCHEME(retry_counter) && !(hcd->driver->flags & HCD_USB3))
    break;
    }

  retval = usb_get_device_descriptor(udev, 8);
  if (retval < 8) {
   dev_err(&udev->dev,
     "device descriptor read/8, error %d\n",
     retval);
   if (retval >= 0)
    retval = -EMSGSIZE;
  } else {
   retval = 0;
   break;
  }
 }
 if (retval)
  goto fail;







 if ((udev->speed == 129) &&
   (le16_to_cpu(udev->descriptor.bcdUSB) < 0x0300)) {
  dev_err(&udev->dev, "got a wrong device descriptor, "
    "warm reset device\n");
  hub_port_reset(hub, port1, udev,
    HUB_BH_RESET_TIME, 1);
  retval = -EINVAL;
  goto fail;
 }

 if (udev->descriptor.bMaxPacketSize0 == 0xff ||
   udev->speed == 129)
  i = 512;
 else
  i = udev->descriptor.bMaxPacketSize0;
 if (le16_to_cpu(udev->ep0.desc.wMaxPacketSize) != i) {
  if (udev->speed != 132 ||
    !(i == 8 || i == 16 || i == 32 || i == 64)) {
   dev_err(&udev->dev, "ep0 maxpacket = %d\n", i);
   retval = -EMSGSIZE;
   goto fail;
  }
  dev_dbg(&udev->dev, "ep0 maxpacket = %d\n", i);
  udev->ep0.desc.wMaxPacketSize = cpu_to_le16(i);
  usb_ep0_reinit(udev);
 }

 retval = usb_get_device_descriptor(udev, USB_DT_DEVICE_SIZE);
 if (retval < (signed)sizeof(udev->descriptor)) {
  dev_err(&udev->dev, "device descriptor read/all, error %d\n",
   retval);
  if (retval >= 0)
   retval = -ENOMSG;
  goto fail;
 }

 if (udev->wusb == 0 && le16_to_cpu(udev->descriptor.bcdUSB) >= 0x0201) {
  retval = usb_get_bos_descriptor(udev);
  if (!retval) {
   udev->lpm_capable = usb_device_supports_lpm(udev);
   usb_set_lpm_parameters(udev);
  }
 }

 retval = 0;

 if (hcd->driver->update_device)
  hcd->driver->update_device(hcd, udev);
fail:
 if (retval) {
  hub_port_disable(hub, port1, 0);
  update_devnum(udev, devnum);
 }
 mutex_unlock(&usb_address0_mutex);
 return retval;
}

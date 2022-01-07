
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct usb_wwan_intf_private {int susp_lock; int send_setup; } ;
struct usb_serial {struct usb_wwan_intf_private* private; TYPE_3__* interface; TYPE_5__* dev; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_9__ {scalar_t__ idVendor; scalar_t__ idProduct; } ;
struct TYPE_10__ {TYPE_4__ descriptor; } ;
struct TYPE_8__ {TYPE_2__* cur_altsetting; } ;
struct TYPE_6__ {int bInterfaceClass; } ;
struct TYPE_7__ {TYPE_1__ desc; } ;


 scalar_t__ DLINK_PRODUCT_DWM_652 ;
 scalar_t__ DLINK_VENDOR_ID ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct usb_wwan_intf_private* kzalloc (int,int ) ;
 int option_send_setup ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int option_probe(struct usb_serial *serial,
   const struct usb_device_id *id)
{
 struct usb_wwan_intf_private *data;

 if (serial->dev->descriptor.idVendor == DLINK_VENDOR_ID &&
  serial->dev->descriptor.idProduct == DLINK_PRODUCT_DWM_652 &&
  serial->interface->cur_altsetting->desc.bInterfaceClass == 0x8)
  return -ENODEV;

 data = serial->private = kzalloc(sizeof(struct usb_wwan_intf_private), GFP_KERNEL);
 if (!data)
  return -ENOMEM;
 data->send_setup = option_send_setup;
 spin_lock_init(&data->susp_lock);
 return 0;
}

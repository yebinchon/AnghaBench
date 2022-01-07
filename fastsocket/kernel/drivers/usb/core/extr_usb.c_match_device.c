
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int idProduct; int idVendor; } ;
struct usb_device {int maxchild; struct usb_device** children; int dev; TYPE_1__ descriptor; } ;


 int dev_dbg (int *,char*,...) ;
 int le16_to_cpu (int ) ;
 struct usb_device* usb_get_dev (struct usb_device*) ;
 int usb_lock_device (struct usb_device*) ;
 int usb_unlock_device (struct usb_device*) ;

__attribute__((used)) static struct usb_device *match_device(struct usb_device *dev,
           u16 vendor_id, u16 product_id)
{
 struct usb_device *ret_dev = ((void*)0);
 int child;

 dev_dbg(&dev->dev, "check for vendor %04x, product %04x ...\n",
     le16_to_cpu(dev->descriptor.idVendor),
     le16_to_cpu(dev->descriptor.idProduct));


 if ((vendor_id == le16_to_cpu(dev->descriptor.idVendor)) &&
     (product_id == le16_to_cpu(dev->descriptor.idProduct))) {
  dev_dbg(&dev->dev, "matched this device!\n");
  ret_dev = usb_get_dev(dev);
  goto exit;
 }


 for (child = 0; child < dev->maxchild; ++child) {
  if (dev->children[child]) {
   usb_lock_device(dev->children[child]);
   ret_dev = match_device(dev->children[child],
            vendor_id, product_id);
   usb_unlock_device(dev->children[child]);
   if (ret_dev)
    goto exit;
  }
 }
exit:
 return ret_dev;
}

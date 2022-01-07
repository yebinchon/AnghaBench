
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl4030_usb {scalar_t__ linkstat; int lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 scalar_t__ USB_LINK_VBUS ;
 struct twl4030_usb* dev_get_drvdata (struct device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t twl4030_usb_vbus_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct twl4030_usb *twl = dev_get_drvdata(dev);
 unsigned long flags;
 int ret = -EINVAL;

 spin_lock_irqsave(&twl->lock, flags);
 ret = sprintf(buf, "%s\n",
   (twl->linkstat == USB_LINK_VBUS) ? "on" : "off");
 spin_unlock_irqrestore(&twl->lock, flags);

 return ret;
}

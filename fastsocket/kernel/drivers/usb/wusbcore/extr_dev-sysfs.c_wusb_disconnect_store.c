
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wusbhc {int mutex; } ;
struct usb_device {int portnum; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t ENODEV ;
 int __wusbhc_dev_disable (struct wusbhc*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sscanf (char const*,char*,unsigned int*) ;
 struct usb_device* to_usb_device (struct device*) ;
 int wusb_port_no_to_idx (int ) ;
 struct wusbhc* wusbhc_get_by_usb_dev (struct usb_device*) ;
 int wusbhc_put (struct wusbhc*) ;

__attribute__((used)) static ssize_t wusb_disconnect_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t size)
{
 struct usb_device *usb_dev;
 struct wusbhc *wusbhc;
 unsigned command;
 u8 port_idx;

 if (sscanf(buf, "%u", &command) != 1)
  return -EINVAL;
 if (command == 0)
  return size;
 usb_dev = to_usb_device(dev);
 wusbhc = wusbhc_get_by_usb_dev(usb_dev);
 if (wusbhc == ((void*)0))
  return -ENODEV;

 mutex_lock(&wusbhc->mutex);
 port_idx = wusb_port_no_to_idx(usb_dev->portnum);
 __wusbhc_dev_disable(wusbhc, port_idx);
 mutex_unlock(&wusbhc->mutex);
 wusbhc_put(wusbhc);
 return size;
}

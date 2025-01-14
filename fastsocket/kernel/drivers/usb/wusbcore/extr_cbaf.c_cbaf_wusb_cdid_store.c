
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusb_ckhdid {int * data; } ;
struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cbaf {struct wusb_ckhdid cdid; } ;
typedef int ssize_t ;


 int EINVAL ;
 int sscanf (char const*,char*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 struct cbaf* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static ssize_t cbaf_wusb_cdid_store(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t size)
{
 ssize_t result;
 struct usb_interface *iface = to_usb_interface(dev);
 struct cbaf *cbaf = usb_get_intfdata(iface);
 struct wusb_ckhdid cdid;

 result = sscanf(buf,
   "%02hhx %02hhx %02hhx %02hhx "
   "%02hhx %02hhx %02hhx %02hhx "
   "%02hhx %02hhx %02hhx %02hhx "
   "%02hhx %02hhx %02hhx %02hhx",
   &cdid.data[0] , &cdid.data[1],
   &cdid.data[2] , &cdid.data[3],
   &cdid.data[4] , &cdid.data[5],
   &cdid.data[6] , &cdid.data[7],
   &cdid.data[8] , &cdid.data[9],
   &cdid.data[10], &cdid.data[11],
   &cdid.data[12], &cdid.data[13],
   &cdid.data[14], &cdid.data[15]);
 if (result != 16)
  return -EINVAL;

 cbaf->cdid = cdid;

 return size;
}

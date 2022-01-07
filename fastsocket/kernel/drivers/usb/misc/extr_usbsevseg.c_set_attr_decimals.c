
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_sevsegdev {int* decimals; } ;
struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int GFP_KERNEL ;
 int memset (int*,int ,int) ;
 size_t my_memlen (char const*,size_t) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 int update_display_visual (struct usb_sevsegdev*,int ) ;
 struct usb_sevsegdev* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static ssize_t set_attr_decimals(struct device *dev,
 struct device_attribute *attr, const char *buf, size_t count)
{
 struct usb_interface *intf = to_usb_interface(dev);
 struct usb_sevsegdev *mydev = usb_get_intfdata(intf);
 size_t end = my_memlen(buf, count);
 int i;

 if (end > sizeof(mydev->decimals))
  return -EINVAL;

 for (i = 0; i < end; i++)
  if (buf[i] != '0' && buf[i] != '1')
   return -EINVAL;

 memset(mydev->decimals, 0, sizeof(mydev->decimals));
 for (i = 0; i < end; i++)
  if (buf[i] == '1')
   mydev->decimals[end-1-i] = 1;

 update_display_visual(mydev, GFP_KERNEL);

 return count;
}

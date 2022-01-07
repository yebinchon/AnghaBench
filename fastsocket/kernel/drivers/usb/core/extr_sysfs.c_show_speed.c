
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int speed; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
 int sprintf (char*,char*,char*) ;
 struct usb_device* to_usb_device (struct device*) ;

__attribute__((used)) static ssize_t
show_speed(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct usb_device *udev;
 char *speed;

 udev = to_usb_device(dev);

 switch (udev->speed) {
 case 131:
  speed = "1.5";
  break;
 case 129:
 case 133:
  speed = "12";
  break;
 case 132:
  speed = "480";
  break;
 case 128:
  speed = "480";
  break;
 case 130:
  speed = "5000";
  break;
 default:
  speed = "unknown";
 }
 return sprintf(buf, "%s\n", speed);
}

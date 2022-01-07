
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6_variax {int tone; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 int to_usb_interface (struct device*) ;
 struct usb_line6_variax* usb_get_intfdata (int ) ;

__attribute__((used)) static ssize_t variax_get_tone(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 struct usb_line6_variax *variax = usb_get_intfdata(to_usb_interface(dev));
 return sprintf(buf, "%d\n", variax->tone);
}

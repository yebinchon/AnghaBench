
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6_variax {int volume; int line6; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int VARIAXMIDI_volume ;
 scalar_t__ line6_transmit_parameter (int *,int ,int) ;
 int simple_strtoul (char const*,int *,int) ;
 int to_usb_interface (struct device*) ;
 struct usb_line6_variax* usb_get_intfdata (int ) ;

__attribute__((used)) static ssize_t variax_set_volume(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct usb_line6_variax *variax = usb_get_intfdata(to_usb_interface(dev));
 int value = simple_strtoul(buf, ((void*)0), 10);

 if (line6_transmit_parameter(&variax->line6, VARIAXMIDI_volume,
         value) == 0)
  variax->volume = value;

 return count;
}

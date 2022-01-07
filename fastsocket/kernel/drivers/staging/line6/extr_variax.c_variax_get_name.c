
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct usb_line6_variax {TYPE_1__ model_data; int dumpreq; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int get_string (char*,int ,int) ;
 int line6_wait_dump (int *,int ) ;
 int to_usb_interface (struct device*) ;
 struct usb_line6_variax* usb_get_intfdata (int ) ;

__attribute__((used)) static ssize_t variax_get_name(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 struct usb_line6_variax *variax = usb_get_intfdata(to_usb_interface(dev));
 line6_wait_dump(&variax->dumpreq, 0);
 return get_string(buf, variax->model_data.name,
     sizeof(variax->model_data.name));
}

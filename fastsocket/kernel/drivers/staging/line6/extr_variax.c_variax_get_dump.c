
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int control; } ;
struct usb_line6_variax {TYPE_1__ model_data; int dumpreq; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int line6_wait_dump (int *,int ) ;
 int memcpy (char*,int *,int) ;
 int to_usb_interface (struct device*) ;
 struct usb_line6_variax* usb_get_intfdata (int ) ;

__attribute__((used)) static ssize_t variax_get_dump(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 struct usb_line6_variax *variax = usb_get_intfdata(to_usb_interface(dev));
 int retval;
 retval = line6_wait_dump(&variax->dumpreq, 0);
 if (retval < 0)
  return retval;
 memcpy(buf, &variax->model_data.control,
        sizeof(variax->model_data.control));
 return sizeof(variax->model_data.control);
}

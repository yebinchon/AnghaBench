
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* control; } ;
struct usb_line6_pod {TYPE_1__ prog_data; int dumpreq; } ;
struct usb_interface {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int line6_wait_dump (int *,int ) ;
 int sprintf (char*,char*,int) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 struct usb_line6_pod* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static ssize_t pod_get_param_int(struct device *dev, char *buf, int param)
{
 struct usb_interface *interface = to_usb_interface(dev);
 struct usb_line6_pod *pod = usb_get_intfdata(interface);
 int retval = line6_wait_dump(&pod->dumpreq, 0);
 if (retval < 0)
  return retval;
 return sprintf(buf, "%d\n", pod->prog_data.control[param]);
}

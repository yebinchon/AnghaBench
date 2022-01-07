
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6_pod {int prog_data; int dumpreq; } ;
struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int line6_wait_dump (int *,int ) ;
 int memcpy (char*,int *,int) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 struct usb_line6_pod* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static ssize_t pod_get_dump(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 struct usb_interface *interface = to_usb_interface(dev);
 struct usb_line6_pod *pod = usb_get_intfdata(interface);
 int retval = line6_wait_dump(&pod->dumpreq, 0);
 if (retval < 0)
  return retval;
 memcpy(buf, &pod->prog_data, sizeof(pod->prog_data));
 return sizeof(pod->prog_data);
}

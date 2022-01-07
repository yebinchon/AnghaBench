
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6_pod {int line6; } ;
struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int POD_SYSEX_FINISH ;
 int kfree (char*) ;
 int line6_send_sysex_message (int *,char*,int) ;
 char* pod_alloc_sysex_buffer (struct usb_line6_pod*,int ,int) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 struct usb_line6_pod* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static ssize_t pod_set_finish(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct usb_interface *interface = to_usb_interface(dev);
 struct usb_line6_pod *pod = usb_get_intfdata(interface);
 int size = 0;
 char *sysex = pod_alloc_sysex_buffer(pod, POD_SYSEX_FINISH, size);
 if (!sysex)
  return 0;
 line6_send_sysex_message(&pod->line6, sysex, size);
 kfree(sysex);
 return count;
}

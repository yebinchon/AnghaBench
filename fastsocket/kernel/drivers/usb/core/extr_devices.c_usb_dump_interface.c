
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface_cache {struct usb_host_interface* altsetting; } ;
struct usb_interface {int dummy; } ;
struct TYPE_3__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct TYPE_4__ {int desc; } ;


 char* usb_dump_endpoint_descriptor (int,char*,char*,int *) ;
 char* usb_dump_interface_descriptor (char*,char*,struct usb_interface_cache const*,struct usb_interface const*,int) ;

__attribute__((used)) static char *usb_dump_interface(int speed, char *start, char *end,
    const struct usb_interface_cache *intfc,
    const struct usb_interface *iface, int setno)
{
 const struct usb_host_interface *desc = &intfc->altsetting[setno];
 int i;

 start = usb_dump_interface_descriptor(start, end, intfc, iface, setno);
 for (i = 0; i < desc->desc.bNumEndpoints; i++) {
  if (start > end)
   return start;
  start = usb_dump_endpoint_descriptor(speed,
    start, end, &desc->endpoint[i].desc);
 }
 return start;
}

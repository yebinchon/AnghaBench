
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ctrlrequest {int wValue; } ;
struct urb {TYPE_1__* dev; scalar_t__ setup_packet; } ;
typedef int __u16 ;
struct TYPE_2__ {int dev; } ;


 int dev_name (int *) ;
 int le16_to_cpu (int ) ;
 int usbip_uinfo (char*,...) ;

__attribute__((used)) static int tweak_set_configuration_cmd(struct urb *urb)
{
 struct usb_ctrlrequest *req;
 __u16 config;

 req = (struct usb_ctrlrequest *) urb->setup_packet;
 config = le16_to_cpu(req->wValue);
 usbip_uinfo("set_configuration (%d) to %s\n", config,
      dev_name(&urb->dev->dev));
 usbip_uinfo("but, skip!\n");

 return 0;

}

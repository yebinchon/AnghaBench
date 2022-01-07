
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bDeviceProtocol; } ;
struct usb_device {TYPE_1__ descriptor; } ;


 scalar_t__ USB_HUB_PR_SS ;

__attribute__((used)) static inline int hub_is_superspeed(struct usb_device *hdev)
{
 return (hdev->descriptor.bDeviceProtocol == USB_HUB_PR_SS);
}

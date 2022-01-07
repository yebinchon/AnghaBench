
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct usb_hub {int dummy; } ;
struct usb_device {scalar_t__ speed; int u2_params; int u1_params; TYPE_5__* parent; TYPE_2__* bos; int lpm_capable; } ;
struct TYPE_10__ {int u2_params; int u1_params; TYPE_4__* bos; } ;
struct TYPE_9__ {TYPE_3__* ss_cap; } ;
struct TYPE_8__ {unsigned int bU1devExitLat; unsigned int bU2DevExitLat; } ;
struct TYPE_7__ {TYPE_1__* ss_cap; } ;
struct TYPE_6__ {unsigned int bU1devExitLat; unsigned int bU2DevExitLat; } ;


 scalar_t__ USB_SPEED_SUPER ;
 struct usb_hub* hdev_to_hub (TYPE_5__*) ;
 int usb_set_lpm_mel (struct usb_device*,int *,unsigned int,struct usb_hub*,int *,unsigned int) ;
 int usb_set_lpm_pel (struct usb_device*,int *,unsigned int,struct usb_hub*,int *,unsigned int,unsigned int) ;
 int usb_set_lpm_sel (struct usb_device*,int *) ;

__attribute__((used)) static void usb_set_lpm_parameters(struct usb_device *udev)
{
 struct usb_hub *hub;
 unsigned int port_to_port_delay;
 unsigned int udev_u1_del;
 unsigned int udev_u2_del;
 unsigned int hub_u1_del;
 unsigned int hub_u2_del;

 if (!udev->lpm_capable || udev->speed != USB_SPEED_SUPER)
  return;

 hub = hdev_to_hub(udev->parent);



 if (!hub)
  return;

 udev_u1_del = udev->bos->ss_cap->bU1devExitLat;
 udev_u2_del = udev->bos->ss_cap->bU2DevExitLat;
 hub_u1_del = udev->parent->bos->ss_cap->bU1devExitLat;
 hub_u2_del = udev->parent->bos->ss_cap->bU2DevExitLat;

 usb_set_lpm_mel(udev, &udev->u1_params, udev_u1_del,
   hub, &udev->parent->u1_params, hub_u1_del);

 usb_set_lpm_mel(udev, &udev->u2_params, udev_u2_del,
   hub, &udev->parent->u2_params, hub_u2_del);
 port_to_port_delay = 1;

 usb_set_lpm_pel(udev, &udev->u1_params, udev_u1_del,
   hub, &udev->parent->u1_params, hub_u1_del,
   port_to_port_delay);

 if (hub_u2_del > hub_u1_del)
  port_to_port_delay = 1 + hub_u2_del - hub_u1_del;
 else
  port_to_port_delay = 1 + hub_u1_del;

 usb_set_lpm_pel(udev, &udev->u2_params, udev_u2_del,
   hub, &udev->parent->u2_params, hub_u2_del,
   port_to_port_delay);


 usb_set_lpm_sel(udev, &udev->u1_params);
 usb_set_lpm_sel(udev, &udev->u2_params);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct usb_sevsegdev {int intf; scalar_t__ powered; scalar_t__ shadow_power; TYPE_1__* udev; } ;
struct TYPE_3__ {int dev; } ;


 int dev_dbg (int *,char*,int) ;
 int usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;
 int usb_control_msg (TYPE_1__*,int ,int,int,int,int,int *,int ,int) ;
 int usb_sndctrlpipe (TYPE_1__*,int ) ;

__attribute__((used)) static void update_display_powered(struct usb_sevsegdev *mydev)
{
 int rc;

 if (!mydev->shadow_power && mydev->powered) {
  rc = usb_autopm_get_interface(mydev->intf);
  if (rc < 0)
   return;
 }

 rc = usb_control_msg(mydev->udev,
   usb_sndctrlpipe(mydev->udev, 0),
   0x12,
   0x48,
   (80 * 0x100) + 10,
   (0x00 * 0x100) + (mydev->powered ? 1 : 0),
   ((void*)0),
   0,
   2000);
 if (rc < 0)
  dev_dbg(&mydev->udev->dev, "power retval = %d\n", rc);

 if (mydev->shadow_power && !mydev->powered)
  usb_autopm_put_interface(mydev->intf);
}

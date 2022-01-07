
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dbg (int *,char*,...) ;
 int dev_err (int *,char*,int) ;
 int kfree (char*) ;
 char* kzalloc (int,int ) ;
 int usb_control_msg (struct usb_device*,int ,int,int,int,int,char*,int,int) ;
 int usb_driver_set_configuration (struct usb_device*,int) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int magic_dual_mode(struct usb_device *udev)
{
 char *dummy_buffer = kzalloc(2, GFP_KERNEL);
 int retval;

 if (!dummy_buffer)
  return -ENOMEM;




 dbg(&udev->dev, "Sending magic pearl command\n");
 retval = usb_control_msg(udev, usb_rcvctrlpipe(udev, 0),
     0xa9, 0xc0, 1, 1, dummy_buffer, 2, 100);
 dbg(&udev->dev, "Magic pearl command returned %d\n", retval);

 dbg(&udev->dev, "Calling set_configuration\n");
 retval = usb_driver_set_configuration(udev, 1);
 if (retval)
  dev_err(&udev->dev, "Set Configuration failed :%d.\n", retval);

 kfree(dummy_buffer);
 return retval;
}

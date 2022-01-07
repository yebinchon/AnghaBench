
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct usb_cytherm {TYPE_1__* udev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int dev; } ;


 int GFP_KERNEL ;
 int READ_PORT ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;
 int sprintf (char*,char*,int) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 struct usb_cytherm* usb_get_intfdata (struct usb_interface*) ;
 int vendor_command (TYPE_1__*,int ,int,int ,unsigned char*,int) ;

__attribute__((used)) static ssize_t show_port1(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct usb_interface *intf = to_usb_interface(dev);
 struct usb_cytherm *cytherm = usb_get_intfdata(intf);

 int retval;
 unsigned char *buffer;

 buffer = kmalloc(8, GFP_KERNEL);
 if (!buffer) {
  dev_err(&cytherm->udev->dev, "out of memory\n");
  return 0;
 }

 retval = vendor_command(cytherm->udev, READ_PORT, 1, 0, buffer, 8);
 if (retval)
  dev_dbg(&cytherm->udev->dev, "retval = %d\n", retval);

 retval = buffer[1];

 kfree(buffer);

 return sprintf(buf, "%d", retval);
}

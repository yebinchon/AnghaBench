
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct usbtmc_device_data {int usb_dev; TYPE_1__* intf; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int ENOMEM ;
 int EPERM ;
 int GFP_KERNEL ;
 int USBTMC_REQUEST_INDICATOR_PULSE ;
 int USBTMC_STATUS_SUCCESS ;
 int USBTMC_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int dev_dbg (struct device*,char*,int) ;
 int dev_err (struct device*,char*,int) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int*,int,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int usbtmc_ioctl_indicator_pulse(struct usbtmc_device_data *data)
{
 struct device *dev;
 u8 *buffer;
 int rv;

 dev = &data->intf->dev;

 buffer = kmalloc(2, GFP_KERNEL);
 if (!buffer)
  return -ENOMEM;

 rv = usb_control_msg(data->usb_dev,
        usb_rcvctrlpipe(data->usb_dev, 0),
        USBTMC_REQUEST_INDICATOR_PULSE,
        USB_DIR_IN | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
        0, 0, buffer, 0x01, USBTMC_TIMEOUT);

 if (rv < 0) {
  dev_err(dev, "usb_control_msg returned %d\n", rv);
  goto exit;
 }

 dev_dbg(dev, "INDICATOR_PULSE returned %x\n", buffer[0]);

 if (buffer[0] != USBTMC_STATUS_SUCCESS) {
  dev_err(dev, "INDICATOR_PULSE returned %x\n", buffer[0]);
  rv = -EPERM;
  goto exit;
 }
 rv = 0;

exit:
 kfree(buffer);
 return rv;
}

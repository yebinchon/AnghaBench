
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char interface_capabilities; char device_capabilities; char usb488_interface_capabilities; char usb488_device_capabilities; } ;
struct usbtmc_device_data {TYPE_1__ capabilities; TYPE_2__* usb_dev; } ;
struct device {int dummy; } ;
struct TYPE_5__ {struct device dev; } ;


 int ENOMEM ;
 int EPERM ;
 int GFP_KERNEL ;
 int USBTMC_REQUEST_GET_CAPABILITIES ;
 char USBTMC_STATUS_SUCCESS ;
 int USBTMC_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int dev_dbg (struct device*,char*,char) ;
 int dev_err (struct device*,char*,char) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int usb_control_msg (TYPE_2__*,int ,int ,int,int ,int ,char*,int,int ) ;
 int usb_rcvctrlpipe (TYPE_2__*,int ) ;

__attribute__((used)) static int get_capabilities(struct usbtmc_device_data *data)
{
 struct device *dev = &data->usb_dev->dev;
 char *buffer;
 int rv = 0;

 buffer = kmalloc(0x18, GFP_KERNEL);
 if (!buffer)
  return -ENOMEM;

 rv = usb_control_msg(data->usb_dev, usb_rcvctrlpipe(data->usb_dev, 0),
        USBTMC_REQUEST_GET_CAPABILITIES,
        USB_DIR_IN | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
        0, 0, buffer, 0x18, USBTMC_TIMEOUT);
 if (rv < 0) {
  dev_err(dev, "usb_control_msg returned %d\n", rv);
  goto err_out;
 }

 dev_dbg(dev, "GET_CAPABILITIES returned %x\n", buffer[0]);
 if (buffer[0] != USBTMC_STATUS_SUCCESS) {
  dev_err(dev, "GET_CAPABILITIES returned %x\n", buffer[0]);
  rv = -EPERM;
  goto err_out;
 }
 dev_dbg(dev, "Interface capabilities are %x\n", buffer[4]);
 dev_dbg(dev, "Device capabilities are %x\n", buffer[5]);
 dev_dbg(dev, "USB488 interface capabilities are %x\n", buffer[14]);
 dev_dbg(dev, "USB488 device capabilities are %x\n", buffer[15]);

 data->capabilities.interface_capabilities = buffer[4];
 data->capabilities.device_capabilities = buffer[5];
 data->capabilities.usb488_interface_capabilities = buffer[14];
 data->capabilities.usb488_device_capabilities = buffer[15];
 rv = 0;

err_out:
 kfree(buffer);
 return rv;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct usbtmc_device_data {TYPE_1__* usb_dev; int bulk_in; } ;
struct TYPE_3__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int USBTMC_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_ENDPOINT_HALT ;
 int USB_RECIP_ENDPOINT ;
 int USB_REQ_CLEAR_FEATURE ;
 int USB_TYPE_STANDARD ;
 int dev_err (int *,char*,int) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int usb_control_msg (TYPE_1__*,int ,int ,int,int ,int ,int *,int ,int ) ;
 int usb_sndctrlpipe (TYPE_1__*,int ) ;

__attribute__((used)) static int usbtmc_ioctl_clear_in_halt(struct usbtmc_device_data *data)
{
 u8 *buffer;
 int rv;

 buffer = kmalloc(2, GFP_KERNEL);
 if (!buffer)
  return -ENOMEM;

 rv = usb_control_msg(data->usb_dev, usb_sndctrlpipe(data->usb_dev, 0),
        USB_REQ_CLEAR_FEATURE,
        USB_DIR_OUT | USB_TYPE_STANDARD |
        USB_RECIP_ENDPOINT,
        USB_ENDPOINT_HALT, data->bulk_in, buffer, 0,
        USBTMC_TIMEOUT);

 if (rv < 0) {
  dev_err(&data->usb_dev->dev, "usb_control_msg returned %d\n",
   rv);
  goto exit;
 }
 rv = 0;

exit:
 kfree(buffer);
 return rv;
}

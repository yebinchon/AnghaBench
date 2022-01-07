
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct usbtmc_device_data {int bulk_out; int usb_dev; int bTag_last_write; TYPE_1__* intf; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int ENOMEM ;
 int EPERM ;
 int GFP_KERNEL ;
 int USBTMC_MAX_READS_TO_CLEAR_BULK_IN ;
 int USBTMC_REQUEST_CHECK_ABORT_BULK_OUT_STATUS ;
 int USBTMC_REQUEST_INITIATE_ABORT_BULK_OUT ;
 int USBTMC_STATUS_PENDING ;
 int USBTMC_STATUS_SUCCESS ;
 int USBTMC_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int USB_ENDPOINT_HALT ;
 int USB_RECIP_ENDPOINT ;
 int USB_REQ_CLEAR_FEATURE ;
 int USB_TYPE_CLASS ;
 int USB_TYPE_STANDARD ;
 int dev_dbg (struct device*,char*,int) ;
 int dev_err (struct device*,char*,int) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int*,int,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int usbtmc_ioctl_abort_bulk_out(struct usbtmc_device_data *data)
{
 struct device *dev;
 u8 *buffer;
 int rv;
 int n;

 dev = &data->intf->dev;

 buffer = kmalloc(8, GFP_KERNEL);
 if (!buffer)
  return -ENOMEM;

 rv = usb_control_msg(data->usb_dev,
        usb_rcvctrlpipe(data->usb_dev, 0),
        USBTMC_REQUEST_INITIATE_ABORT_BULK_OUT,
        USB_DIR_IN | USB_TYPE_CLASS | USB_RECIP_ENDPOINT,
        data->bTag_last_write, data->bulk_out,
        buffer, 2, USBTMC_TIMEOUT);

 if (rv < 0) {
  dev_err(dev, "usb_control_msg returned %d\n", rv);
  goto exit;
 }

 dev_dbg(dev, "INITIATE_ABORT_BULK_OUT returned %x\n", buffer[0]);

 if (buffer[0] != USBTMC_STATUS_SUCCESS) {
  dev_err(dev, "INITIATE_ABORT_BULK_OUT returned %x\n",
   buffer[0]);
  rv = -EPERM;
  goto exit;
 }

 n = 0;

usbtmc_abort_bulk_out_check_status:
 rv = usb_control_msg(data->usb_dev,
        usb_rcvctrlpipe(data->usb_dev, 0),
        USBTMC_REQUEST_CHECK_ABORT_BULK_OUT_STATUS,
        USB_DIR_IN | USB_TYPE_CLASS | USB_RECIP_ENDPOINT,
        0, data->bulk_out, buffer, 0x08,
        USBTMC_TIMEOUT);
 n++;
 if (rv < 0) {
  dev_err(dev, "usb_control_msg returned %d\n", rv);
  goto exit;
 }

 dev_dbg(dev, "CHECK_ABORT_BULK_OUT returned %x\n", buffer[0]);

 if (buffer[0] == USBTMC_STATUS_SUCCESS)
  goto usbtmc_abort_bulk_out_clear_halt;

 if ((buffer[0] == USBTMC_STATUS_PENDING) &&
     (n < USBTMC_MAX_READS_TO_CLEAR_BULK_IN))
  goto usbtmc_abort_bulk_out_check_status;

 rv = -EPERM;
 goto exit;

usbtmc_abort_bulk_out_clear_halt:
 rv = usb_control_msg(data->usb_dev,
        usb_sndctrlpipe(data->usb_dev, 0),
        USB_REQ_CLEAR_FEATURE,
        USB_DIR_OUT | USB_TYPE_STANDARD |
        USB_RECIP_ENDPOINT,
        USB_ENDPOINT_HALT, data->bulk_out, buffer,
        0, USBTMC_TIMEOUT);

 if (rv < 0) {
  dev_err(dev, "usb_control_msg returned %d\n", rv);
  goto exit;
 }
 rv = 0;

exit:
 kfree(buffer);
 return rv;
}

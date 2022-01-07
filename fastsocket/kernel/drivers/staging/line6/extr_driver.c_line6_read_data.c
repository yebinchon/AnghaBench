
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6 {int ifcdev; struct usb_device* usbdev; } ;
struct usb_device {int dummy; } ;


 int EINVAL ;
 int HZ ;
 int LINE6_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int dev_err (int ,char*,int,...) ;
 int usb_control_msg (struct usb_device*,int ,int,int,int,int,void*,size_t,int) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

int line6_read_data(struct usb_line6 *line6, int address, void *data, size_t datalen)
{
 struct usb_device *usbdev = line6->usbdev;
 int ret;
 unsigned char len;


 ret = usb_control_msg(usbdev, usb_sndctrlpipe(usbdev, 0), 0x67,
            USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_OUT,
            (datalen << 8) | 0x21, address, ((void*)0), 0, LINE6_TIMEOUT * HZ);

 if (ret < 0) {
  dev_err(line6->ifcdev, "read request failed (error %d)\n", ret);
  return ret;
 }


 do {
  ret = usb_control_msg(usbdev, usb_rcvctrlpipe(usbdev, 0), 0x67,
          USB_TYPE_VENDOR | USB_RECIP_DEVICE |
          USB_DIR_IN,
          0x0012, 0x0000, &len, 1,
          LINE6_TIMEOUT * HZ);
  if (ret < 0) {
   dev_err(line6->ifcdev,
    "receive length failed (error %d)\n", ret);
   return ret;
  }
 }
 while (len == 0xff)
  ;

 if (len != datalen) {

  dev_err(line6->ifcdev,
   "length mismatch (expected %d, got %d)\n",
   (int)datalen, (int)len);
  return -EINVAL;
 }


 ret = usb_control_msg(usbdev, usb_rcvctrlpipe(usbdev, 0), 0x67,
         USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_IN,
         0x0013, 0x0000, data, datalen,
         LINE6_TIMEOUT * HZ);

 if (ret < 0) {
  dev_err(line6->ifcdev, "read failed (error %d)\n", ret);
  return ret;
 }

 return 0;
}

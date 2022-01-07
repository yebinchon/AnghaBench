
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct usbtest_dev {int dummy; } ;
struct usb_device {int dummy; } ;


 int EBADMSG ;
 int EINVAL ;
 int ENOMEM ;
 int ERROR (struct usbtest_dev*,char*,...) ;
 int GFP_KERNEL ;
 int USB_CTRL_GET_TIMEOUT ;
 int USB_CTRL_SET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int USB_TYPE_VENDOR ;
 int kfree (unsigned int*) ;
 unsigned int* kmalloc (unsigned int,int ) ;
 scalar_t__ realworld ;
 struct usb_device* testdev_to_usbdev (struct usbtest_dev*) ;
 int usb_control_msg (struct usb_device*,int ,int,int,int ,int ,unsigned int*,unsigned int,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int ctrl_out (struct usbtest_dev *dev,
  unsigned count, unsigned length, unsigned vary)
{
 unsigned i, j, len;
 int retval;
 u8 *buf;
 char *what = "?";
 struct usb_device *udev;

 if (length < 1 || length > 0xffff || vary >= length)
  return -EINVAL;

 buf = kmalloc(length, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 udev = testdev_to_usbdev (dev);
 len = length;
 retval = 0;




 for (i = 0; i < count; i++) {

  for (j = 0; j < len; j++)
   buf [j] = i + j;
  retval = usb_control_msg (udev, usb_sndctrlpipe (udev,0),
    0x5b, USB_DIR_OUT|USB_TYPE_VENDOR,
    0, 0, buf, len, USB_CTRL_SET_TIMEOUT);
  if (retval != len) {
   what = "write";
   if (retval >= 0) {
    ERROR(dev, "ctrl_out, wlen %d (expected %d)\n",
      retval, len);
    retval = -EBADMSG;
   }
   break;
  }


  retval = usb_control_msg (udev, usb_rcvctrlpipe (udev,0),
    0x5c, USB_DIR_IN|USB_TYPE_VENDOR,
    0, 0, buf, len, USB_CTRL_GET_TIMEOUT);
  if (retval != len) {
   what = "read";
   if (retval >= 0) {
    ERROR(dev, "ctrl_out, rlen %d (expected %d)\n",
      retval, len);
    retval = -EBADMSG;
   }
   break;
  }


  for (j = 0; j < len; j++) {
   if (buf [j] != (u8) (i + j)) {
    ERROR(dev, "ctrl_out, byte %d is %d not %d\n",
     j, buf [j], (u8) i + j);
    retval = -EBADMSG;
    break;
   }
  }
  if (retval < 0) {
   what = "verify";
   break;
  }

  len += vary;





  if (len > length)
   len = realworld ? 1 : 0;
 }

 if (retval < 0)
  ERROR (dev, "ctrl_out %s failed, code %d, count %d\n",
   what, retval, i);

 kfree (buf);
 return retval;
}

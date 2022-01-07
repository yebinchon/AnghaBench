
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct usb_device {scalar_t__ state; int dev; int string_langid; } ;


 int EHOSTUNREACH ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_NOIO ;
 unsigned char USB_DT_STRING ;
 scalar_t__ USB_STATE_SUSPENDED ;
 int UTF16_LITTLE_ENDIAN ;
 int dev_dbg (int *,char*,unsigned char,int,char*) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;
 int usb_get_langid (struct usb_device*,unsigned char*) ;
 int usb_string_sub (struct usb_device*,int ,int,unsigned char*) ;
 int utf16s_to_utf8s (int *,int,int ,char*,size_t) ;

int usb_string(struct usb_device *dev, int index, char *buf, size_t size)
{
 unsigned char *tbuf;
 int err;

 if (dev->state == USB_STATE_SUSPENDED)
  return -EHOSTUNREACH;
 if (size <= 0 || !buf || !index)
  return -EINVAL;
 buf[0] = 0;
 tbuf = kmalloc(256, GFP_NOIO);
 if (!tbuf)
  return -ENOMEM;

 err = usb_get_langid(dev, tbuf);
 if (err < 0)
  goto errout;

 err = usb_string_sub(dev, dev->string_langid, index, tbuf);
 if (err < 0)
  goto errout;

 size--;
 err = utf16s_to_utf8s((wchar_t *) &tbuf[2], (err - 2) / 2,
   UTF16_LITTLE_ENDIAN, buf, size);
 buf[err] = 0;

 if (tbuf[1] != USB_DT_STRING)
  dev_dbg(&dev->dev,
   "wrong descriptor type %02x for string %d (\"%s\")\n",
   tbuf[1], index, buf);

 errout:
 kfree(tbuf);
 return err;
}

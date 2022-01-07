
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;


 int GFP_NOIO ;
 int MAX_USB_STRING_SIZE ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int memcpy (char*,char*,int) ;
 int usb_string (struct usb_device*,int,char*,int) ;

char *usb_cache_string(struct usb_device *udev, int index)
{
 char *buf;
 char *smallbuf = ((void*)0);
 int len;

 if (index <= 0)
  return ((void*)0);

 buf = kmalloc(MAX_USB_STRING_SIZE, GFP_NOIO);
 if (buf) {
  len = usb_string(udev, index, buf, MAX_USB_STRING_SIZE);
  if (len > 0) {
   smallbuf = kmalloc(++len, GFP_NOIO);
   if (!smallbuf)
    return buf;
   memcpy(smallbuf, buf, len);
  }
  kfree(buf);
 }
 return smallbuf;
}

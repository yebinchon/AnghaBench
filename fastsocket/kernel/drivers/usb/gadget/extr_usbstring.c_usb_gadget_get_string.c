
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_string {int id; int s; } ;
struct usb_gadget_strings {int language; struct usb_string* strings; } ;
typedef int __le16 ;


 int EINVAL ;
 int USB_DT_STRING ;
 int memset (int*,int ,int) ;
 int min (size_t,int ) ;
 int strlen (int ) ;
 int utf8_to_utf16le (int ,int *,int) ;

int
usb_gadget_get_string (struct usb_gadget_strings *table, int id, u8 *buf)
{
 struct usb_string *s;
 int len;


 if (id == 0) {
  buf [0] = 4;
  buf [1] = USB_DT_STRING;
  buf [2] = (u8) table->language;
  buf [3] = (u8) (table->language >> 8);
  return 4;
 }
 for (s = table->strings; s && s->s; s++)
  if (s->id == id)
   break;


 if (!s || !s->s)
  return -EINVAL;


 len = min ((size_t) 126, strlen (s->s));
 memset (buf + 2, 0, 2 * len);
 len = utf8_to_utf16le(s->s, (__le16 *)&buf[2], len);
 if (len < 0)
  return -EINVAL;
 buf [0] = (len + 1) * 2;
 buf [1] = USB_DT_STRING;
 return buf [0];
}

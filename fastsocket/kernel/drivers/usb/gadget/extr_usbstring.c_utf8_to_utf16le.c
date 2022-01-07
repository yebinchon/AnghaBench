
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
typedef int __le16 ;


 int put_unaligned_le16 (scalar_t__,int ) ;
 scalar_t__ unlikely (scalar_t__) ;

__attribute__((used)) static int utf8_to_utf16le(const char *s, __le16 *cp, unsigned len)
{
 int count = 0;
 u8 c;
 u16 uchar;





 while (len != 0 && (c = (u8) *s++) != 0) {
  if (unlikely(c & 0x80)) {


   if ((c & 0xe0) == 0xc0) {
    uchar = (c & 0x1f) << 6;

    c = (u8) *s++;
    if ((c & 0xc0) != 0x80)
     goto fail;
    c &= 0x3f;
    uchar |= c;



   } else if ((c & 0xf0) == 0xe0) {
    uchar = (c & 0x0f) << 12;

    c = (u8) *s++;
    if ((c & 0xc0) != 0x80)
     goto fail;
    c &= 0x3f;
    uchar |= c << 6;

    c = (u8) *s++;
    if ((c & 0xc0) != 0x80)
     goto fail;
    c &= 0x3f;
    uchar |= c;


    if (0xd800 <= uchar && uchar <= 0xdfff)
     goto fail;







   } else
    goto fail;
  } else
   uchar = c;
  put_unaligned_le16(uchar, cp++);
  count++;
  len--;
 }
 return count;
fail:
 return -1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int USB_DT_STRING ;
 int strlen (char const*) ;

__attribute__((used)) static unsigned
ascii2desc(char const *s, u8 *buf, unsigned len)
{
 unsigned n, t = 2 + 2*strlen(s);

 if (t > 254)
  t = 254;
 if (len > t)
  len = t;

 t += USB_DT_STRING << 8;

 n = len;
 while (n--) {
  *buf++ = t;
  if (!n--)
   break;
  *buf++ = t >> 8;
  t = (unsigned char)*s++;
 }
 return len;
}

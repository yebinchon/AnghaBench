
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;


 int V4mappedprefix ;
 unsigned int fmt_xlong (char*,unsigned int) ;
 int inet_ntoa_r (struct in_addr,char*) ;
 int memcmp (char const*,int ,int) ;
 unsigned int strlen (char*) ;

__attribute__((used)) static unsigned int fmt_ip6(char *s, const char ip[16])
{
 unsigned int len;
 unsigned int i;
 unsigned int temp;
 unsigned int compressing;
 int j;

 len = 0;
 compressing = 0;
 for (j = 0; j < 16; j += 2) {
  temp = ((unsigned long)(unsigned char)ip[j] << 8) +
      (unsigned long)(unsigned char)ip[j + 1];
  if (temp == 0) {
   if (!compressing) {
    compressing = 1;
    if (j == 0) {
     *s++ = ':';
     ++len;
    }
   }
  } else {
   if (compressing) {
    compressing = 0;
    *s++ = ':';
    ++len;
   }
   i = fmt_xlong(s, temp);
   len += i;
   s += i;
   if (j < 14) {
    *s++ = ':';
    ++len;
   }
  }
 }
 if (compressing) {
  *s++ = ':';
  ++len;
 }
 *s = 0;
 return len;
}

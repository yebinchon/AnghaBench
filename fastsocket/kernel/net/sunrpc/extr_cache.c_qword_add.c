
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void qword_add(char **bpp, int *lp, char *str)
{
 char *bp = *bpp;
 int len = *lp;
 char c;

 if (len < 0) return;

 while ((c=*str++) && len)
  switch(c) {
  case ' ':
  case '\t':
  case '\n':
  case '\\':
   if (len >= 4) {
    *bp++ = '\\';
    *bp++ = '0' + ((c & 0300)>>6);
    *bp++ = '0' + ((c & 0070)>>3);
    *bp++ = '0' + ((c & 0007)>>0);
   }
   len -= 4;
   break;
  default:
   *bp++ = c;
   len--;
  }
 if (c || len <1) len = -1;
 else {
  *bp++ = ' ';
  len--;
 }
 *bpp = bp;
 *lp = len;
}

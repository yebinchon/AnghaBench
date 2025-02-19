
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void qword_addhex(char **bpp, int *lp, char *buf, int blen)
{
 char *bp = *bpp;
 int len = *lp;

 if (len < 0) return;

 if (len > 2) {
  *bp++ = '\\';
  *bp++ = 'x';
  len -= 2;
  while (blen && len >= 2) {
   unsigned char c = *buf++;
   *bp++ = '0' + ((c&0xf0)>>4) + (c>=0xa0)*('a'-'9'-1);
   *bp++ = '0' + (c&0x0f) + ((c&0x0f)>=0x0a)*('a'-'9'-1);
   len -= 2;
   blen--;
  }
 }
 if (blen || len<1) len = -1;
 else {
  *bp++ = ' ';
  len--;
 }
 *bpp = bp;
 *lp = len;
}

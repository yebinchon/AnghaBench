
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hex_to_bin (char) ;
 scalar_t__ isodigit (char) ;

int qword_get(char **bpp, char *dest, int bufsize)
{

 char *bp = *bpp;
 int len = 0;

 while (*bp == ' ') bp++;

 if (bp[0] == '\\' && bp[1] == 'x') {

  bp += 2;
  while (len < bufsize) {
   int h, l;

   h = hex_to_bin(bp[0]);
   if (h < 0)
    break;

   l = hex_to_bin(bp[1]);
   if (l < 0)
    break;

   *dest++ = (h << 4) | l;
   bp += 2;
   len++;
  }
 } else {

  while (*bp != ' ' && *bp != '\n' && *bp && len < bufsize-1) {
   if (*bp == '\\' &&
       isodigit(bp[1]) && (bp[1] <= '3') &&
       isodigit(bp[2]) &&
       isodigit(bp[3])) {
    int byte = (*++bp -'0');
    bp++;
    byte = (byte << 3) | (*bp++ - '0');
    byte = (byte << 3) | (*bp++ - '0');
    *dest++ = byte;
    len++;
   } else {
    *dest++ = *bp++;
    len++;
   }
  }
 }

 if (*bp != ' ' && *bp != '\n' && *bp != '\0')
  return -1;
 while (*bp == ' ') bp++;
 *bpp = bp;
 *dest = '\0';
 return len;
}

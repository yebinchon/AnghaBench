
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void** hexlate ;
 int longlongendswap (unsigned char*) ;

__attribute__((used)) static char *
longlong_hexchars (unsigned long long value,
     char *outbuff)
{
  if (value == 0)
    {
      *outbuff++ = '0';
      return outbuff;
    }
  else
    {
      static unsigned char disbuf[8];
      unsigned char *scan, *limit;
      unsigned char c, nib;
      int leadzero = 1;
      scan = disbuf;
      limit = scan + 8;
      {
 unsigned long long *dp;
 dp = (unsigned long long *) scan;
 *dp = value;
      }
      longlongendswap (disbuf);
      while (scan < limit)
 {
   c = *scan++;
   if (leadzero)
     {
       if (c == 0)
  continue;
       else
  leadzero = 0;
     }
   nib = c >> 4;
   *outbuff++ = hexlate[nib];
   nib = c & 0x0f;
   *outbuff++ = hexlate[nib];
 }
      return outbuff;
    }
}

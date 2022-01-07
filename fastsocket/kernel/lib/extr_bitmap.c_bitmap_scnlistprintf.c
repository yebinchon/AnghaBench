
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bscnl_emit (char*,unsigned int,int,int,int) ;
 int find_first_bit (unsigned long const*,int) ;
 int find_next_bit (unsigned long const*,int,int) ;

int bitmap_scnlistprintf(char *buf, unsigned int buflen,
 const unsigned long *maskp, int nmaskbits)
{
 int len = 0;

 int cur, rbot, rtop;

 if (buflen == 0)
  return 0;
 buf[0] = 0;

 rbot = cur = find_first_bit(maskp, nmaskbits);
 while (cur < nmaskbits) {
  rtop = cur;
  cur = find_next_bit(maskp, nmaskbits, cur+1);
  if (cur >= nmaskbits || cur > rtop + 1) {
   len = bscnl_emit(buf, buflen, rbot, rtop, len);
   rbot = cur;
  }
 }
 return len;
}

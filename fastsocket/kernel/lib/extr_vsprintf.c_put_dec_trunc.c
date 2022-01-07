
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char* put_dec_trunc(char *buf, unsigned q)
{
 unsigned d3, d2, d1, d0;
 d1 = (q>>4) & 0xf;
 d2 = (q>>8) & 0xf;
 d3 = (q>>12);

 d0 = 6*(d3 + d2 + d1) + (q & 0xf);
 q = (d0 * 0xcd) >> 11;
 d0 = d0 - 10*q;
 *buf++ = d0 + '0';
 d1 = q + 9*d3 + 5*d2 + d1;
 if (d1 != 0) {
  q = (d1 * 0xcd) >> 11;
  d1 = d1 - 10*q;
  *buf++ = d1 + '0';

  d2 = q + 2*d2;
  if ((d2 != 0) || (d3 != 0)) {
   q = (d2 * 0xd) >> 7;
   d2 = d2 - 10*q;
   *buf++ = d2 + '0';

   d3 = q + 4*d3;
   if (d3 != 0) {
    q = (d3 * 0xcd) >> 11;
    d3 = d3 - 10*q;
    *buf++ = d3 + '0';
    if (q != 0)
     *buf++ = q + '0';
   }
  }
 }
 return buf;
}

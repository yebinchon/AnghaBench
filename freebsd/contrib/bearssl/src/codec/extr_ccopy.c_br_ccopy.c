
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char uint32_t ;


 unsigned char MUX (unsigned char,unsigned char,unsigned char) ;

void
br_ccopy(uint32_t ctl, void *dst, const void *src, size_t len)
{
 unsigned char *d;
 const unsigned char *s;

 d = dst;
 s = src;
 while (len -- > 0) {
  uint32_t x, y;

  x = *s ++;
  y = *d;
  *d = MUX(ctl, x, y);
  d ++;
 }
}

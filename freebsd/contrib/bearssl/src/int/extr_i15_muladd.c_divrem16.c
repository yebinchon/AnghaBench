
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int LE (int,int) ;

__attribute__((used)) static uint32_t
divrem16(uint32_t x, uint32_t d, uint32_t *r)
{
 int i;
 uint32_t q;

 q = 0;
 d <<= 16;
 for (i = 16; i >= 0; i --) {
  uint32_t ctl;

  ctl = LE(d, x);
  q |= ctl << i;
  x -= (-ctl) & d;
  d >>= 1;
 }
 if (r != ((void*)0)) {
  *r = x;
 }
 return q;
}

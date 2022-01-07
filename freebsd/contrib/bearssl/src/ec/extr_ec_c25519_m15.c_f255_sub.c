
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ARSH (int,int) ;
 int MUL15 (int,int) ;

__attribute__((used)) static void
f255_sub(uint32_t *d, const uint32_t *a, const uint32_t *b)
{




 int i;
 uint32_t cc, w;

 cc = (uint32_t)-38;
 for (i = 0; i < 20; i ++) {
  w = a[i] - b[i] + cc;
  d[i] = w & 0x1FFF;
  cc = ARSH(w, 13);
 }
 cc = MUL15((w + 0x200) >> 8, 19);
 d[19] &= 0xFF;
 for (i = 0; i < 20; i ++) {
  w = d[i] + cc;
  d[i] = w & 0x1FFF;
  cc = w >> 13;
 }
}

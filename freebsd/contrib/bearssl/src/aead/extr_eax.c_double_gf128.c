
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
double_gf128(unsigned char *dst, const unsigned char *src)
{
 unsigned cc;
 int i;

 cc = 0x87 & -((unsigned)src[0] >> 7);
 for (i = 15; i >= 0; i --) {
  unsigned z;

  z = (src[i] << 1) ^ cc;
  cc = z >> 8;
  dst[i] = (unsigned char)z;
 }
}

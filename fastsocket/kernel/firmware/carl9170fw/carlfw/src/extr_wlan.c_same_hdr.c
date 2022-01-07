
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static bool same_hdr(const void *_d0, const void *_d1)
{
 const uint32_t *d0 = _d0;
 const uint32_t *d1 = _d1;


 return !((d0[0] ^ d1[0]) |
   (d0[1] ^ d1[1]) |
   (d0[2] ^ d1[2]) | (d0[3] ^ d1[3]) |
   (d0[4] ^ d1[4]));
}

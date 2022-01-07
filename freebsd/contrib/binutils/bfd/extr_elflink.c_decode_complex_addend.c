
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
decode_complex_addend
    (unsigned long * start,
     unsigned long * oplen,
     unsigned long * len,
     unsigned long * wordsz,
     unsigned long * chunksz,
     unsigned long * lsb0_p,
     unsigned long * signed_p,
     unsigned long * trunc_p,
     unsigned long encoded)
{
  * start = encoded & 0x3F;
  * len = (encoded >> 6) & 0x3F;
  * oplen = (encoded >> 12) & 0x3F;
  * wordsz = (encoded >> 18) & 0xF;
  * chunksz = (encoded >> 22) & 0xF;
  * lsb0_p = (encoded >> 27) & 1;
  * signed_p = (encoded >> 28) & 1;
  * trunc_p = (encoded >> 29) & 1;
}

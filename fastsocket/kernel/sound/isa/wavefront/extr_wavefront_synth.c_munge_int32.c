
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned char *
munge_int32 (unsigned int src,
      unsigned char *dst,
      unsigned int dst_size)
{
 unsigned int i;

 for (i = 0; i < dst_size; i++) {
  *dst = src & 0x7F;
  src = src >> 7;


  dst++;
  };
 return dst;
}

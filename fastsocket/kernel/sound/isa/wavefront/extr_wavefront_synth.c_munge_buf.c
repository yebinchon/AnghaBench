
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static
unsigned char *
munge_buf (unsigned char *src, unsigned char *dst, unsigned int dst_size)

{
 unsigned int i;
 unsigned int last = dst_size / 2;

 for (i = 0; i < last; i++) {
  *dst++ = src[i] & 0x7f;
  *dst++ = src[i] >> 7;
 }
 return dst;
}

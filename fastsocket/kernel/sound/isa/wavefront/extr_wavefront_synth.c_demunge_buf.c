
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static
unsigned char *
demunge_buf (unsigned char *src, unsigned char *dst, unsigned int src_bytes)

{
 int i;
 unsigned char *end = src + src_bytes;

 end = src + src_bytes;



 for (i = 0; src != end; i++) {
  dst[i] = *src++;
  dst[i] |= (*src++)<<7;
 }

 return dst;
}

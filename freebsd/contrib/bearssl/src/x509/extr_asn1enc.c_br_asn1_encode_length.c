
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t
br_asn1_encode_length(void *dest, size_t len)
{
 unsigned char *buf;
 size_t z;
 int i, j;

 buf = dest;
 if (len < 0x80) {
  if (buf != ((void*)0)) {
   *buf = len;
  }
  return 1;
 }
 i = 0;
 for (z = len; z != 0; z >>= 8) {
  i ++;
 }
 if (buf != ((void*)0)) {
  *buf ++ = 0x80 + i;
  for (j = i - 1; j >= 0; j --) {
   *buf ++ = len >> (j << 3);
  }
 }
 return i + 1;
}

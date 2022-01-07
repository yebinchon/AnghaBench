
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t
be8_to_le13(uint32_t *dst, const unsigned char *src, size_t len)
{
 uint32_t acc;
 int acc_len;

 acc = 0;
 acc_len = 0;
 while (len -- > 0) {
  acc |= (uint32_t)src[len] << acc_len;
  acc_len += 8;
  if (acc_len >= 13) {
   *dst ++ = acc & 0x1FFF;
   acc >>= 13;
   acc_len -= 13;
  }
 }
 return acc;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int br_i15_bit_length (int*,size_t) ;

void
br_i15_decode(uint16_t *x, const void *src, size_t len)
{
 const unsigned char *buf;
 size_t v;
 uint32_t acc;
 int acc_len;

 buf = src;
 v = 1;
 acc = 0;
 acc_len = 0;
 while (len -- > 0) {
  uint32_t b;

  b = buf[len];
  acc |= (b << acc_len);
  acc_len += 8;
  if (acc_len >= 15) {
   x[v ++] = acc & 0x7FFF;
   acc_len -= 15;
   acc >>= 15;
  }
 }
 if (acc_len != 0) {
  x[v ++] = acc;
 }
 x[0] = br_i15_bit_length(x + 1, v - 1);
}

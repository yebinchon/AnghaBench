
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int br_i15_decode (int*,void const*,size_t) ;
 int br_i15_rshift (int*,int) ;
 int br_i15_zero (int*,int) ;

void
br_ecdsa_i15_bits2int(uint16_t *x,
 const void *src, size_t len, uint32_t ebitlen)
{
 uint32_t bitlen, hbitlen;
 int sc;

 bitlen = ebitlen - (ebitlen >> 4);
 hbitlen = (uint32_t)len << 3;
 if (hbitlen > bitlen) {
  len = (bitlen + 7) >> 3;
  sc = (int)((hbitlen - bitlen) & 7);
 } else {
  sc = 0;
 }
 br_i15_zero(x, ebitlen);
 br_i15_decode(x, src, len);
 br_i15_rshift(x, sc);
 x[0] = ebitlen;
}

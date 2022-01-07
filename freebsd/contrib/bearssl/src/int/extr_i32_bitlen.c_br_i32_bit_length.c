
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int BIT_LENGTH (int) ;
 int EQ (int,int ) ;
 int MUX (int,int,int) ;

uint32_t
br_i32_bit_length(uint32_t *x, size_t xlen)
{
 uint32_t tw, twk;

 tw = 0;
 twk = 0;
 while (xlen -- > 0) {
  uint32_t w, c;

  c = EQ(tw, 0);
  w = x[xlen];
  tw = MUX(c, w, tw);
  twk = MUX(c, (uint32_t)xlen, twk);
 }
 return (twk << 5) + BIT_LENGTH(tw);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rubin_state {scalar_t__* bits; scalar_t__ bit_divider; } ;


 int encode (struct rubin_state*,scalar_t__,scalar_t__,unsigned char) ;

__attribute__((used)) static int out_byte(struct rubin_state *rs, unsigned char byte)
{
 int i, ret;
 struct rubin_state rs_copy;
 rs_copy = *rs;

 for (i=0; i<8; i++) {
  ret = encode(rs, rs->bit_divider-rs->bits[i],
        rs->bits[i], byte & 1);
  if (ret) {

   *rs = rs_copy;
   return ret;
  }
  byte >>= 1 ;
 }
 return 0;
}

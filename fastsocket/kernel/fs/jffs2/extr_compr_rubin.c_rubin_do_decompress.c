
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rubin_state {int pp; } ;


 unsigned char in_byte (struct rubin_state*) ;
 int init_decode (struct rubin_state*,int,int*) ;
 int init_pushpull (int *,unsigned char*,int,int ,int ) ;

__attribute__((used)) static void rubin_do_decompress(int bit_divider, int *bits,
    unsigned char *cdata_in,
    unsigned char *page_out, uint32_t srclen,
    uint32_t destlen)
{
 int outpos = 0;
 struct rubin_state rs;

 init_pushpull(&rs.pp, cdata_in, srclen, 0, 0);
 init_decode(&rs, bit_divider, bits);

 while (outpos < destlen)
  page_out[outpos++] = in_byte(&rs);
}

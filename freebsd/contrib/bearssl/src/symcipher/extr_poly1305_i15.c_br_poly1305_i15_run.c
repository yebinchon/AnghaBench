
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint16_t ;
typedef int (* br_chacha20_run ) (void const*,void const*,int,void*,size_t) ;


 int P0I ;
 int P1305 ;
 int R2 ;
 int br_enc64le (unsigned char*,int ) ;
 int br_i15_add (int *,int *,int) ;
 int br_i15_decode_mod (int *,unsigned char*,int,int ) ;
 int br_i15_encode (void*,int,int *) ;
 int br_i15_montymul (int *,int *,int ,int ,int ) ;
 int br_i15_zero (int *,int) ;
 int byteswap16 (void*) ;
 int memset (unsigned char*,int ,int) ;
 int poly1305_inner (int *,int *,unsigned char*,int) ;

void
br_poly1305_i15_run(const void *key, const void *iv,
 void *data, size_t len, const void *aad, size_t aad_len,
 void *tag, br_chacha20_run ichacha, int encrypt)
{
 unsigned char pkey[32], foot[16];
 uint16_t t[10], r[10], acc[10];





 memset(pkey, 0, sizeof pkey);
 ichacha(key, iv, 0, pkey, sizeof pkey);





 if (encrypt) {
  ichacha(key, iv, 1, data, len);
 }
 pkey[ 3] &= 0x0F;
 pkey[ 7] &= 0x0F;
 pkey[11] &= 0x0F;
 pkey[15] &= 0x0F;
 pkey[ 4] &= 0xFC;
 pkey[ 8] &= 0xFC;
 pkey[12] &= 0xFC;





 byteswap16(pkey);
 br_i15_decode_mod(t, pkey, 16, P1305);




 br_i15_montymul(r, t, R2, P1305, P0I);




 br_i15_zero(acc, 0x8A);





 br_enc64le(foot, (uint64_t)aad_len);
 br_enc64le(foot + 8, (uint64_t)len);
 poly1305_inner(acc, r, aad, aad_len);
 poly1305_inner(acc, r, data, len);
 poly1305_inner(acc, r, foot, sizeof foot);




 byteswap16(pkey + 16);
 br_i15_decode_mod(t, pkey + 16, 16, P1305);





 br_i15_add(acc, t, 1);





 br_i15_encode(tag, 16, acc);
 byteswap16(tag);




 if (!encrypt) {
  ichacha(key, iv, 1, data, len);
 }
}

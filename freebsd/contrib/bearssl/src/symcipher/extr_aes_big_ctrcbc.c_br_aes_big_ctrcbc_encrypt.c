
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_aes_big_ctrcbc_keys ;


 int br_aes_big_ctrcbc_ctr (int const*,void*,void*,size_t) ;
 int br_aes_big_ctrcbc_mac (int const*,void*,void*,size_t) ;

void
br_aes_big_ctrcbc_encrypt(const br_aes_big_ctrcbc_keys *ctx,
 void *ctr, void *cbcmac, void *data, size_t len)
{
 br_aes_big_ctrcbc_ctr(ctx, ctr, data, len);
 br_aes_big_ctrcbc_mac(ctx, cbcmac, data, len);
}

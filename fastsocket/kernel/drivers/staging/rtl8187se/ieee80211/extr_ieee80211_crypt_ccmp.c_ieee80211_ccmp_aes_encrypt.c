
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_tfm {int dummy; } ;


 int crypto_cipher_encrypt_one (void*,int *,int const*) ;

void ieee80211_ccmp_aes_encrypt(struct crypto_tfm *tfm,
        const u8 pt[16], u8 ct[16])
{
 crypto_cipher_encrypt_one((void *)tfm, ct, pt);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_cipher {int dummy; } ;


 int crypto_cipher_encrypt_one (struct crypto_cipher*,int *,int const*) ;

__attribute__((used)) static inline void lib80211_ccmp_aes_encrypt(struct crypto_cipher *tfm,
           const u8 pt[16], u8 ct[16])
{
 crypto_cipher_encrypt_one(tfm, ct, pt);
}

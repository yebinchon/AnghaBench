
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_cipher {int dummy; } ;


 int ALG_CCMP_KEY_LEN ;
 int CRYPTO_ALG_ASYNC ;
 int IS_ERR (struct crypto_cipher*) ;
 struct crypto_cipher* crypto_alloc_cipher (char*,int ,int ) ;
 int crypto_cipher_setkey (struct crypto_cipher*,int const*,int ) ;

struct crypto_cipher *ieee80211_aes_key_setup_encrypt(const u8 key[])
{
 struct crypto_cipher *tfm;

 tfm = crypto_alloc_cipher("aes", 0, CRYPTO_ALG_ASYNC);
 if (!IS_ERR(tfm))
  crypto_cipher_setkey(tfm, key, ALG_CCMP_KEY_LEN);

 return tfm;
}

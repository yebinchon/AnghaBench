
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_cipher {int dummy; } ;


 int AES_CMAC_KEY_LEN ;
 int CRYPTO_ALG_ASYNC ;
 int IS_ERR (struct crypto_cipher*) ;
 struct crypto_cipher* crypto_alloc_cipher (char*,int ,int ) ;
 int crypto_cipher_setkey (struct crypto_cipher*,int const*,int ) ;

struct crypto_cipher * ieee80211_aes_cmac_key_setup(const u8 key[])
{
 struct crypto_cipher *tfm;

 tfm = crypto_alloc_cipher("aes", 0, CRYPTO_ALG_ASYNC);
 if (!IS_ERR(tfm))
  crypto_cipher_setkey(tfm, key, AES_CMAC_KEY_LEN);

 return tfm;
}

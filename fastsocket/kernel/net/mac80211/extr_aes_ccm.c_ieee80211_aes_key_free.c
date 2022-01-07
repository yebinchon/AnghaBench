
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_cipher {int dummy; } ;


 int crypto_free_cipher (struct crypto_cipher*) ;

void ieee80211_aes_key_free(struct crypto_cipher *tfm)
{
 crypto_free_cipher(tfm);
}

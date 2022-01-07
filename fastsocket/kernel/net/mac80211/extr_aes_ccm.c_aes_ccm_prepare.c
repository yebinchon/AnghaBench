
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_cipher {int dummy; } ;


 int AES_BLOCK_SIZE ;
 int crypto_cipher_encrypt_one (struct crypto_cipher*,int*,int*) ;

__attribute__((used)) static void aes_ccm_prepare(struct crypto_cipher *tfm, u8 *scratch, u8 *a)
{
 int i;
 u8 *b_0, *aad, *b, *s_0;

 b_0 = scratch + 3 * AES_BLOCK_SIZE;
 aad = scratch + 4 * AES_BLOCK_SIZE;
 b = scratch;
 s_0 = scratch + AES_BLOCK_SIZE;

 crypto_cipher_encrypt_one(tfm, b, b_0);


 for (i = 0; i < AES_BLOCK_SIZE; i++)
  aad[i] ^= b[i];
 crypto_cipher_encrypt_one(tfm, b, aad);

 aad += AES_BLOCK_SIZE;

 for (i = 0; i < AES_BLOCK_SIZE; i++)
  aad[i] ^= b[i];
 crypto_cipher_encrypt_one(tfm, a, aad);


 b_0[0] &= 0x07;


 b_0[14] = 0;
 b_0[15] = 0;
 crypto_cipher_encrypt_one(tfm, s_0, b_0);
}

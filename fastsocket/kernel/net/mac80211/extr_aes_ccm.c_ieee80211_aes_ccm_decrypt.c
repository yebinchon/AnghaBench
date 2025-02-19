
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_cipher {int dummy; } ;


 int AES_BLOCK_SIZE ;
 int CCMP_MIC_LEN ;
 int DIV_ROUND_UP (size_t,int) ;
 int aes_ccm_prepare (struct crypto_cipher*,int*,int*) ;
 int crypto_cipher_encrypt_one (struct crypto_cipher*,int*,int*) ;

int ieee80211_aes_ccm_decrypt(struct crypto_cipher *tfm, u8 *scratch,
         u8 *cdata, size_t data_len, u8 *mic, u8 *data)
{
 int i, j, last_len, num_blocks;
 u8 *pos, *cpos, *b, *s_0, *a, *b_0;

 b = scratch;
 s_0 = scratch + AES_BLOCK_SIZE;
 a = scratch + 2 * AES_BLOCK_SIZE;
 b_0 = scratch + 3 * AES_BLOCK_SIZE;

 num_blocks = DIV_ROUND_UP(data_len, AES_BLOCK_SIZE);
 last_len = data_len % AES_BLOCK_SIZE;
 aes_ccm_prepare(tfm, scratch, a);


 cpos = cdata;
 pos = data;
 for (j = 1; j <= num_blocks; j++) {
  int blen = (j == num_blocks && last_len) ?
   last_len : AES_BLOCK_SIZE;


  b_0[14] = (j >> 8) & 0xff;
  b_0[15] = j & 0xff;
  crypto_cipher_encrypt_one(tfm, b, b_0);
  for (i = 0; i < blen; i++) {
   *pos = *cpos++ ^ b[i];
   a[i] ^= *pos++;
  }
  crypto_cipher_encrypt_one(tfm, a, a);
 }

 for (i = 0; i < CCMP_MIC_LEN; i++) {
  if ((mic[i] ^ s_0[i]) != a[i])
   return -1;
 }

 return 0;
}

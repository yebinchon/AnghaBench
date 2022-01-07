
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_cipher {int dummy; } ;


 int AES_BLOCK_SIZE ;
 int CMAC_TLEN ;
 int crypto_cipher_encrypt_one (struct crypto_cipher*,int*,int*) ;
 int gf_mulx (int*) ;
 int memcpy (int*,int*,int ) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static void aes_128_cmac_vector(struct crypto_cipher *tfm, size_t num_elem,
    const u8 *addr[], const size_t *len, u8 *mac)
{
 u8 cbc[AES_BLOCK_SIZE], pad[AES_BLOCK_SIZE];
 const u8 *pos, *end;
 size_t i, e, left, total_len;

 memset(cbc, 0, AES_BLOCK_SIZE);

 total_len = 0;
 for (e = 0; e < num_elem; e++)
  total_len += len[e];
 left = total_len;

 e = 0;
 pos = addr[0];
 end = pos + len[0];

 while (left >= AES_BLOCK_SIZE) {
  for (i = 0; i < AES_BLOCK_SIZE; i++) {
   cbc[i] ^= *pos++;
   if (pos >= end) {
    e++;
    pos = addr[e];
    end = pos + len[e];
   }
  }
  if (left > AES_BLOCK_SIZE)
   crypto_cipher_encrypt_one(tfm, cbc, cbc);
  left -= AES_BLOCK_SIZE;
 }

 memset(pad, 0, AES_BLOCK_SIZE);
 crypto_cipher_encrypt_one(tfm, pad, pad);
 gf_mulx(pad);

 if (left || total_len == 0) {
  for (i = 0; i < left; i++) {
   cbc[i] ^= *pos++;
   if (pos >= end) {
    e++;
    pos = addr[e];
    end = pos + len[e];
   }
  }
  cbc[left] ^= 0x80;
  gf_mulx(pad);
 }

 for (i = 0; i < AES_BLOCK_SIZE; i++)
  pad[i] ^= cbc[i];
 crypto_cipher_encrypt_one(tfm, pad, pad);
 memcpy(mac, pad, CMAC_TLEN);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_cipher {int dummy; } ;


 size_t AAD_LEN ;
 int CMAC_TLEN ;
 int aes_128_cmac_vector (struct crypto_cipher*,int,int const**,size_t*,int *) ;
 int memset (int *,int ,int) ;

void ieee80211_aes_cmac(struct crypto_cipher *tfm, const u8 *aad,
   const u8 *data, size_t data_len, u8 *mic)
{
 const u8 *addr[3];
 size_t len[3];
 u8 zero[CMAC_TLEN];

 memset(zero, 0, CMAC_TLEN);
 addr[0] = aad;
 len[0] = AAD_LEN;
 addr[1] = data;
 len[1] = data_len - CMAC_TLEN;
 addr[2] = zero;
 len[2] = CMAC_TLEN;

 aes_128_cmac_vector(tfm, 3, addr, len, mic);
}

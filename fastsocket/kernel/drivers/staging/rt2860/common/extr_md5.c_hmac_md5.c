
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int k_opad ;
typedef int k_ipad ;
typedef int MD5_CTX ;


 int MD5Final (int*,int *) ;
 int MD5Init (int *) ;
 int MD5Update (int *,int*,int) ;
 int NdisMoveMemory (int*,int*,size_t) ;
 int NdisZeroMemory (int*,int) ;

void hmac_md5(u8 *key, size_t key_len, u8 *data, size_t data_len, u8 *mac)
{
 MD5_CTX context;
    u8 k_ipad[65];
    u8 k_opad[65];
    u8 tk[16];
 int i;




 if (key_len > 64) {
  MD5_CTX ttcontext;

  MD5Init(&ttcontext);
  MD5Update(&ttcontext, key, key_len);
  MD5Final(tk, &ttcontext);

  key = tk;
  key_len = 16;
 }
 NdisZeroMemory(k_ipad, sizeof(k_ipad));
 NdisZeroMemory(k_opad, sizeof(k_opad));

 NdisMoveMemory(k_ipad, key, key_len);
 NdisMoveMemory(k_opad, key, key_len);


 for (i = 0; i < 64; i++) {
  k_ipad[i] ^= 0x36;
  k_opad[i] ^= 0x5c;
 }


 MD5Init(&context);
 MD5Update(&context, k_ipad, 64);
 MD5Update(&context, data, data_len);
 MD5Final(mac, &context);


 MD5Init(&context);
 MD5Update(&context, k_opad, 64);
 MD5Update(&context, mac, 16);
 MD5Final(mac, &context);
}

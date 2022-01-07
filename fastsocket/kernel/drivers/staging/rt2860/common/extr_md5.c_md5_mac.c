
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int MD5_CTX ;


 int MD5Final (int *,int *) ;
 int MD5Init (int *) ;
 int MD5Update (int *,int *,size_t) ;

void md5_mac(u8 *key, size_t key_len, u8 *data, size_t data_len, u8 *mac)
{
 MD5_CTX context;

 MD5Init(&context);
 MD5Update(&context, key, key_len);
 MD5Update(&context, data, data_len);
 MD5Update(&context, key, key_len);
 MD5Final(mac, &context);
}

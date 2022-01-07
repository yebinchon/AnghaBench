
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfs_crypto_capabilities {int cipher_keysize; void* cipher_strlen; void* hash_strlen; } ;


 void* __cpu_to_be16 (void*) ;
 int __cpu_to_be32 (int ) ;

__attribute__((used)) static inline void netfs_convert_crypto_capabilities(struct netfs_crypto_capabilities *cap)
{
 cap->hash_strlen = __cpu_to_be16(cap->hash_strlen);
 cap->cipher_strlen = __cpu_to_be16(cap->cipher_strlen);
 cap->cipher_keysize = __cpu_to_be32(cap->cipher_keysize);
}

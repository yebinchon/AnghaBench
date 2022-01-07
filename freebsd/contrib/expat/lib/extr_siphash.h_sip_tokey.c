
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sipkey {void** k; } ;


 void* SIP_U8TO64_LE (unsigned char const*) ;

__attribute__((used)) static struct sipkey *sip_tokey(struct sipkey *key, const void *src) {
 key->k[0] = SIP_U8TO64_LE((const unsigned char *)src);
 key->k[1] = SIP_U8TO64_LE((const unsigned char *)src + 8);
 return key;
}

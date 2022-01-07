
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int index_key; int hash; } ;
typedef TYPE_1__ br_ssl_session_cache_lru ;
typedef int br_hmac_key_context ;
typedef int br_hmac_context ;


 int SESSION_ID_LEN ;
 int br_hmac_init (int *,int *,int ) ;
 int br_hmac_key_init (int *,int ,int ,int) ;
 int br_hmac_out (int *,unsigned char*) ;
 int br_hmac_update (int *,unsigned char const*,int ) ;
 int memcpy (unsigned char*,unsigned char const*,int ) ;

__attribute__((used)) static void
mask_id(br_ssl_session_cache_lru *cc,
 const unsigned char *src, unsigned char *dst)
{
 br_hmac_key_context hkc;
 br_hmac_context hc;

 memcpy(dst, src, SESSION_ID_LEN);
 br_hmac_key_init(&hkc, cc->hash, cc->index_key, sizeof cc->index_key);
 br_hmac_init(&hc, &hkc, SESSION_ID_LEN);
 br_hmac_update(&hc, src, SESSION_ID_LEN);
 br_hmac_out(&hc, dst);
}

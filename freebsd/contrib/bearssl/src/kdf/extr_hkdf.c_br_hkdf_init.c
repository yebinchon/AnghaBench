
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int br_hmac_key_context ;
struct TYPE_4__ {int hmac_ctx; } ;
struct TYPE_5__ {TYPE_1__ u; int dig_len; } ;
typedef TYPE_2__ br_hkdf_context ;
typedef int br_hash_class ;


 void const* BR_HKDF_NO_SALT ;
 size_t br_digest_size (int const*) ;
 int br_hmac_init (int *,int *,int ) ;
 int br_hmac_key_init (int *,int const*,void const*,size_t) ;
 int br_hmac_size (int *) ;
 int memset (unsigned char*,int ,size_t) ;

void
br_hkdf_init(br_hkdf_context *hc, const br_hash_class *digest_vtable,
 const void *salt, size_t salt_len)
{
 br_hmac_key_context kc;
 unsigned char tmp[64];

 if (salt == BR_HKDF_NO_SALT) {
  salt = tmp;
  salt_len = br_digest_size(digest_vtable);
  memset(tmp, 0, salt_len);
 }
 br_hmac_key_init(&kc, digest_vtable, salt, salt_len);
 br_hmac_init(&hc->u.hmac_ctx, &kc, 0);
 hc->dig_len = br_hmac_size(&hc->u.hmac_ctx);
}

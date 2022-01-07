
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rng_init_done; int rng; int mhash; } ;
typedef TYPE_1__ br_ssl_engine_context ;
typedef int br_hash_class ;


 int BR_ERR_BAD_STATE ;
 int br_hmac_drbg_init (int *,int const*,int *,int ) ;
 int * br_multihash_getimpl (int *,int ) ;
 int br_sha1_ID ;
 int br_sha256_ID ;
 int br_sha384_ID ;
 int br_ssl_engine_fail (TYPE_1__*,int ) ;

__attribute__((used)) static int
rng_init(br_ssl_engine_context *cc)
{
 const br_hash_class *h;

 if (cc->rng_init_done != 0) {
  return 1;
 }
 h = br_multihash_getimpl(&cc->mhash, br_sha256_ID);
 if (!h) {
  h = br_multihash_getimpl(&cc->mhash, br_sha384_ID);
  if (!h) {
   h = br_multihash_getimpl(&cc->mhash,
    br_sha1_ID);
   if (!h) {
    br_ssl_engine_fail(cc, BR_ERR_BAD_STATE);
    return 0;
   }
  }
 }
 br_hmac_drbg_init(&cc->rng, h, ((void*)0), 0);
 cc->rng_init_done = 1;
 return 1;
}

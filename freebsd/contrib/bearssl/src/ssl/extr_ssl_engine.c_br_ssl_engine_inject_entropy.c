
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rng_init_done; int rng; } ;
typedef TYPE_1__ br_ssl_engine_context ;


 int br_hmac_drbg_update (int *,void const*,size_t) ;
 int rng_init (TYPE_1__*) ;

void
br_ssl_engine_inject_entropy(br_ssl_engine_context *cc,
 const void *data, size_t len)
{






 if (!rng_init(cc)) {
  return;
 }
 br_hmac_drbg_update(&cc->rng, data, len);
 cc->rng_init_done = 2;
}

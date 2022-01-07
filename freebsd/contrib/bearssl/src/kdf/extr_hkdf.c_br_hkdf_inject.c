
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hmac_ctx; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
typedef TYPE_2__ br_hkdf_context ;


 int br_hmac_update (int *,void const*,size_t) ;

void
br_hkdf_inject(br_hkdf_context *hc, const void *ikm, size_t ikm_len)
{
 br_hmac_update(&hc->u.hmac_ctx, ikm, ikm_len);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hmac_ctx; int prk_ctx; } ;
struct TYPE_5__ {scalar_t__ chunk_num; int dig_len; int ptr; TYPE_1__ u; } ;
typedef TYPE_2__ br_hkdf_context ;


 int br_hmac_get_digest (int *) ;
 int br_hmac_key_init (int *,int ,unsigned char*,int ) ;
 int br_hmac_out (int *,unsigned char*) ;

void
br_hkdf_flip(br_hkdf_context *hc)
{
 unsigned char tmp[64];

 br_hmac_out(&hc->u.hmac_ctx, tmp);
 br_hmac_key_init(&hc->u.prk_ctx,
  br_hmac_get_digest(&hc->u.hmac_ctx), tmp, hc->dig_len);
 hc->ptr = hc->dig_len;
 hc->chunk_num = 0;
}

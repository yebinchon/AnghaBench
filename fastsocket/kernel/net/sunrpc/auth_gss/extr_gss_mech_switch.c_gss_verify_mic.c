
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct xdr_netobj {int dummy; } ;
struct xdr_buf {int dummy; } ;
struct gss_ctx {TYPE_2__* mech_type; } ;
struct TYPE_4__ {TYPE_1__* gm_ops; } ;
struct TYPE_3__ {int (* gss_verify_mic ) (struct gss_ctx*,struct xdr_buf*,struct xdr_netobj*) ;} ;


 int stub1 (struct gss_ctx*,struct xdr_buf*,struct xdr_netobj*) ;

u32
gss_verify_mic(struct gss_ctx *context_handle,
        struct xdr_buf *message,
        struct xdr_netobj *mic_token)
{
 return context_handle->mech_type->gm_ops
  ->gss_verify_mic(context_handle,
     message,
     mic_token);
}

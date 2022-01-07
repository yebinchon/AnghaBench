
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct xdr_buf {int dummy; } ;
struct page {int dummy; } ;
struct gss_ctx {TYPE_2__* mech_type; } ;
struct TYPE_4__ {TYPE_1__* gm_ops; } ;
struct TYPE_3__ {int (* gss_wrap ) (struct gss_ctx*,int,struct xdr_buf*,struct page**) ;} ;


 int stub1 (struct gss_ctx*,int,struct xdr_buf*,struct page**) ;

u32
gss_wrap(struct gss_ctx *ctx_id,
  int offset,
  struct xdr_buf *buf,
  struct page **inpages)
{
 return ctx_id->mech_type->gm_ops
  ->gss_wrap(ctx_id, offset, buf, inpages);
}

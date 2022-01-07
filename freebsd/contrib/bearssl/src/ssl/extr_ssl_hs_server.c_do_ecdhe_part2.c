
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int ecdhe_curve; TYPE_2__* iec; } ;
struct TYPE_8__ {int ecdhe_key_len; int ecdhe_key; TYPE_1__ eng; } ;
typedef TYPE_3__ br_ssl_server_context ;
struct TYPE_7__ {size_t (* xoff ) (int,size_t*) ;int (* mul ) (unsigned char*,size_t,int ,int ,int) ;} ;


 int ecdh_common (TYPE_3__*,int,unsigned char*,size_t,int ) ;
 int memset (int ,int ,int ) ;
 int stub1 (unsigned char*,size_t,int ,int ,int) ;
 size_t stub2 (int,size_t*) ;

__attribute__((used)) static void
do_ecdhe_part2(br_ssl_server_context *ctx, int prf_id,
 unsigned char *cpoint, size_t cpoint_len)
{
 int curve;
 uint32_t ctl;
 size_t xoff, xlen;

 curve = ctx->eng.ecdhe_curve;




 ctl = ctx->eng.iec->mul(cpoint, cpoint_len,
  ctx->ecdhe_key, ctx->ecdhe_key_len, curve);
 xoff = ctx->eng.iec->xoff(curve, &xlen);
 ecdh_common(ctx, prf_id, cpoint + xoff, xlen, ctl);






 memset(ctx->ecdhe_key, 0, ctx->ecdhe_key_len);
}

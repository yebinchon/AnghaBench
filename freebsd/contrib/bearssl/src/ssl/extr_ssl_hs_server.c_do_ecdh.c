
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {TYPE_2__** policy_vtable; } ;
typedef TYPE_1__ br_ssl_server_context ;
struct TYPE_6__ {int (* do_keyx ) (TYPE_2__**,unsigned char*,size_t*) ;} ;


 int ecdh_common (TYPE_1__*,int,unsigned char*,size_t,int ) ;
 int stub1 (TYPE_2__**,unsigned char*,size_t*) ;

__attribute__((used)) static void
do_ecdh(br_ssl_server_context *ctx, int prf_id,
 unsigned char *cpoint, size_t cpoint_len)
{
 uint32_t x;




 x = (*ctx->policy_vtable)->do_keyx(ctx->policy_vtable,
  cpoint, &cpoint_len);
 ecdh_common(ctx, prf_id, cpoint, cpoint_len, x);
}

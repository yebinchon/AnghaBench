
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_12__ {size_t qlen; int q; } ;
struct TYPE_13__ {TYPE_1__ ec; } ;
struct TYPE_14__ {TYPE_2__ key; } ;
typedef TYPE_3__ br_x509_pkey ;
struct TYPE_15__ {TYPE_3__* (* get_pkey ) (TYPE_4__ const**,int *) ;} ;
typedef TYPE_4__ br_x509_class ;
struct TYPE_11__ {TYPE_4__** x509ctx; } ;
struct TYPE_16__ {TYPE_10__ eng; TYPE_6__** client_auth_vtable; } ;
typedef TYPE_5__ br_ssl_client_context ;
struct TYPE_17__ {int (* do_keyx ) (TYPE_6__**,unsigned char*,size_t*) ;} ;


 int br_ssl_engine_compute_master (TYPE_10__*,int,unsigned char*,size_t) ;
 int memcpy (unsigned char*,int ,size_t) ;
 TYPE_3__* stub1 (TYPE_4__ const**,int *) ;
 int stub2 (TYPE_6__**,unsigned char*,size_t*) ;

__attribute__((used)) static int
make_pms_static_ecdh(br_ssl_client_context *ctx, int prf_id)
{
 unsigned char point[133];
 size_t point_len;
 const br_x509_class **xc;
 const br_x509_pkey *pk;

 xc = ctx->eng.x509ctx;
 pk = (*xc)->get_pkey(xc, ((void*)0));
 point_len = pk->key.ec.qlen;
 if (point_len > sizeof point) {
  return -1;
 }
 memcpy(point, pk->key.ec.q, point_len);
 if (!(*ctx->client_auth_vtable)->do_keyx(
  ctx->client_auth_vtable, point, &point_len))
 {
  return -1;
 }
 br_ssl_engine_compute_master(&ctx->eng,
  prf_id, point, point_len);
 return 0;
}

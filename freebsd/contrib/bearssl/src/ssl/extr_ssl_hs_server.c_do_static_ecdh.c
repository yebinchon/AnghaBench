
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {size_t qlen; int q; } ;
struct TYPE_12__ {TYPE_3__ ec; } ;
struct TYPE_14__ {TYPE_2__ key; } ;
typedef TYPE_4__ br_x509_pkey ;
struct TYPE_15__ {TYPE_4__* (* get_pkey ) (TYPE_5__ const**,int *) ;} ;
typedef TYPE_5__ br_x509_class ;
struct TYPE_11__ {TYPE_5__** x509ctx; } ;
struct TYPE_16__ {TYPE_1__ eng; } ;
typedef TYPE_6__ br_ssl_server_context ;


 int do_ecdh (TYPE_6__*,int,unsigned char*,size_t) ;
 int memcpy (unsigned char*,int ,size_t) ;
 TYPE_4__* stub1 (TYPE_5__ const**,int *) ;

__attribute__((used)) static void
do_static_ecdh(br_ssl_server_context *ctx, int prf_id)
{
 unsigned char cpoint[133];
 size_t cpoint_len;
 const br_x509_class **xc;
 const br_x509_pkey *pk;

 xc = ctx->eng.x509ctx;
 pk = (*xc)->get_pkey(xc, ((void*)0));
 cpoint_len = pk->key.ec.qlen;
 if (cpoint_len > sizeof cpoint) {





  cpoint_len = 2;
 }
 memcpy(cpoint, pk->key.ec.q, cpoint_len);
 do_ecdh(ctx, prf_id, cpoint, cpoint_len);
}

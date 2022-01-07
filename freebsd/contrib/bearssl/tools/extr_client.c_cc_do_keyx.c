
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_10__ {TYPE_3__* sk; } ;
typedef TYPE_4__ ccert_context ;
typedef int br_ssl_client_certificate_class ;
struct TYPE_11__ {size_t (* xoff ) (int ,size_t*) ;int (* mul ) (unsigned char*,size_t,int ,int ,int ) ;} ;
typedef TYPE_5__ br_ec_impl ;
struct TYPE_7__ {int curve; int xlen; int x; } ;
struct TYPE_8__ {TYPE_1__ ec; } ;
struct TYPE_9__ {TYPE_2__ key; } ;


 TYPE_5__* br_ec_get_default () ;
 int memmove (unsigned char*,unsigned char*,size_t) ;
 int stub1 (unsigned char*,size_t,int ,int ,int ) ;
 size_t stub2 (int ,size_t*) ;

__attribute__((used)) static uint32_t
cc_do_keyx(const br_ssl_client_certificate_class **pctx,
 unsigned char *data, size_t *len)
{
 const br_ec_impl *iec;
 ccert_context *zc;
 size_t xoff, xlen;
 uint32_t r;

 zc = (ccert_context *)pctx;
 iec = br_ec_get_default();
 r = iec->mul(data, *len, zc->sk->key.ec.x,
  zc->sk->key.ec.xlen, zc->sk->key.ec.curve);
 xoff = iec->xoff(zc->sk->key.ec.curve, &xlen);
 memmove(data, data + xoff, xlen);
 *len = xlen;
 return r;
}

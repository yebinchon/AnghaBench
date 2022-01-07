
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {TYPE_2__* sk; TYPE_1__* iec; } ;
typedef TYPE_3__ br_ssl_client_certificate_ec_context ;
typedef int br_ssl_client_certificate_class ;
struct TYPE_5__ {int curve; int xlen; int x; } ;
struct TYPE_4__ {size_t (* xoff ) (int ,size_t*) ;int (* mul ) (unsigned char*,size_t,int ,int ,int ) ;} ;


 int memmove (unsigned char*,unsigned char*,size_t) ;
 int stub1 (unsigned char*,size_t,int ,int ,int ) ;
 size_t stub2 (int ,size_t*) ;

__attribute__((used)) static uint32_t
cc_do_keyx(const br_ssl_client_certificate_class **pctx,
 unsigned char *data, size_t *len)
{
 br_ssl_client_certificate_ec_context *zc;
 uint32_t r;
 size_t xoff, xlen;

 zc = (br_ssl_client_certificate_ec_context *)pctx;
 r = zc->iec->mul(data, *len, zc->sk->x, zc->sk->xlen, zc->sk->curve);
 xoff = zc->iec->xoff(zc->sk->curve, &xlen);
 memmove(data, data + xoff, xlen);
 *len = xlen;
 return r;
}

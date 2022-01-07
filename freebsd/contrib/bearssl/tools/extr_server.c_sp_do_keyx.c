
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
typedef TYPE_4__ policy_context ;
typedef int br_ssl_server_policy_class ;
struct TYPE_11__ {size_t (* xoff ) (int ,size_t*) ;int (* mul ) (unsigned char*,size_t,int ,int ,int ) ;} ;
typedef TYPE_5__ br_ec_impl ;
struct TYPE_7__ {int curve; int xlen; int x; } ;
struct TYPE_8__ {TYPE_1__ ec; int rsa; } ;
struct TYPE_9__ {int key_type; TYPE_2__ key; } ;




 TYPE_5__* br_ec_get_default () ;
 int br_rsa_private_get_default () ;
 int br_rsa_ssl_decrypt (int ,int *,unsigned char*,size_t) ;
 int fprintf (int ,char*,int) ;
 int memmove (unsigned char*,unsigned char*,size_t) ;
 int stderr ;
 int stub1 (unsigned char*,size_t,int ,int ,int ) ;
 size_t stub2 (int ,size_t*) ;

__attribute__((used)) static uint32_t
sp_do_keyx(const br_ssl_server_policy_class **pctx,
 unsigned char *data, size_t *len)
{
 policy_context *pc;
 uint32_t r;
 size_t xoff, xlen;

 pc = (policy_context *)pctx;
 switch (pc->sk->key_type) {
  const br_ec_impl *iec;

 case 128:
  return br_rsa_ssl_decrypt(
   br_rsa_private_get_default(),
   &pc->sk->key.rsa, data, *len);
 case 129:
  iec = br_ec_get_default();
  r = iec->mul(data, *len, pc->sk->key.ec.x,
   pc->sk->key.ec.xlen, pc->sk->key.ec.curve);
  xoff = iec->xoff(pc->sk->key.ec.curve, &xlen);
  memmove(data, data + xoff, xlen);
  *len = xlen;
  return r;
 default:
  fprintf(stderr, "ERROR: unknown private key type (%d)\n",
   (int)pc->sk->key_type);
  return 0;
 }
}

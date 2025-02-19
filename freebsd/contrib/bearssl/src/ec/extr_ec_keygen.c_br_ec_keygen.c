
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* generate ) (TYPE_1__ const**,unsigned char*,size_t) ;} ;
typedef TYPE_1__ br_prng_class ;
struct TYPE_9__ {int curve; unsigned char* x; size_t xlen; } ;
typedef TYPE_2__ br_ec_private_key ;
struct TYPE_10__ {int supported_curves; unsigned char* (* order ) (int,size_t*) ;} ;
typedef TYPE_3__ br_ec_impl ;


 unsigned char* stub1 (int,size_t*) ;
 int stub2 (TYPE_1__ const**,unsigned char*,size_t) ;

size_t
br_ec_keygen(const br_prng_class **rng_ctx,
 const br_ec_impl *impl, br_ec_private_key *sk,
 void *kbuf, int curve)
{
 const unsigned char *order;
 unsigned char *buf;
 size_t len;
 unsigned mask;

 if (curve < 0 || curve >= 32
  || ((impl->supported_curves >> curve) & 1) == 0)
 {
  return 0;
 }
 order = impl->order(curve, &len);
 while (len > 0 && *order == 0) {
  order ++;
  len --;
 }
 if (kbuf == ((void*)0) || len == 0) {
  return len;
 }
 mask = order[0];
 mask |= (mask >> 1);
 mask |= (mask >> 2);
 mask |= (mask >> 4);






 buf = kbuf;
 for (;;) {
  size_t u;
  unsigned cc, zz;

  (*rng_ctx)->generate(rng_ctx, buf, len);
  buf[0] &= mask;
  cc = 0;
  u = len;
  zz = 0;
  while (u -- > 0) {
   cc = ((unsigned)(buf[u] - order[u] - cc) >> 8) & 1;
   zz |= buf[u];
  }
  if (cc != 0 && zz != 0) {
   break;
  }
 }

 if (sk != ((void*)0)) {
  sk->curve = curve;
  sk->x = buf;
  sk->xlen = len;
 }
 return len;
}

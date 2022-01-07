
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int curve; size_t qlen; void* q; } ;
typedef TYPE_1__ br_ec_public_key ;
struct TYPE_8__ {int curve; int xlen; int x; } ;
typedef TYPE_2__ br_ec_private_key ;
struct TYPE_9__ {int supported_curves; size_t (* mulgen ) (void*,int ,int ,int) ;} ;
typedef TYPE_3__ br_ec_impl ;


 size_t* POINT_LEN ;
 size_t stub1 (void*,int ,int ,int) ;

size_t
br_ec_compute_pub(const br_ec_impl *impl, br_ec_public_key *pk,
 void *kbuf, const br_ec_private_key *sk)
{
 int curve;
 size_t len;

 curve = sk->curve;
 if (curve < 0 || curve >= 32 || curve >= (int)(sizeof POINT_LEN)
  || ((impl->supported_curves >> curve) & 1) == 0)
 {
  return 0;
 }
 if (kbuf == ((void*)0)) {
  return POINT_LEN[curve];
 }
 len = impl->mulgen(kbuf, sk->x, sk->xlen, curve);
 if (pk != ((void*)0)) {
  pk->curve = curve;
  pk->q = kbuf;
  pk->qlen = len;
 }
 return len;
}

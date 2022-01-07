
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int available; int name; } ;
struct TYPE_5__ {int available; int name; } ;
struct TYPE_4__ {int available; int name; } ;


 int BUG_ON (int ) ;
 int CRYPTO_ALG_ASYNC ;
 int aalg_entries () ;
 TYPE_3__* aalg_list ;
 int calg_entries () ;
 TYPE_2__* calg_list ;
 int crypto_has_ablkcipher (int ,int ,int ) ;
 int crypto_has_comp (int ,int ,int ) ;
 int crypto_has_hash (int ,int ,int ) ;
 int ealg_entries () ;
 TYPE_1__* ealg_list ;
 int in_softirq () ;

void xfrm_probe_algs(void)
{
 int i, status;

 BUG_ON(in_softirq());

 for (i = 0; i < aalg_entries(); i++) {
  status = crypto_has_hash(aalg_list[i].name, 0,
      CRYPTO_ALG_ASYNC);
  if (aalg_list[i].available != status)
   aalg_list[i].available = status;
 }

 for (i = 0; i < ealg_entries(); i++) {
  status = crypto_has_ablkcipher(ealg_list[i].name, 0, 0);
  if (ealg_list[i].available != status)
   ealg_list[i].available = status;
 }

 for (i = 0; i < calg_entries(); i++) {
  status = crypto_has_comp(calg_list[i].name, 0,
      CRYPTO_ALG_ASYNC);
  if (calg_list[i].available != status)
   calg_list[i].available = status;
 }
}

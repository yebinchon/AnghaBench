
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ifacaddr6 {TYPE_2__* aca_rt; int aca_idev; int aca_refcnt; } ;
struct TYPE_3__ {int dst; } ;
struct TYPE_4__ {TYPE_1__ u; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int dst_release (int *) ;
 int in6_dev_put (int ) ;
 int kfree (struct ifacaddr6*) ;

__attribute__((used)) static void aca_put(struct ifacaddr6 *ac)
{
 if (atomic_dec_and_test(&ac->aca_refcnt)) {
  in6_dev_put(ac->aca_idev);
  dst_release(&ac->aca_rt->u.dst);
  kfree(ac);
 }
}

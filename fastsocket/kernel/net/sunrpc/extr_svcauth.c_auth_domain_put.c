
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int refcount; } ;
struct auth_domain {TYPE_2__* flavour; int hash; TYPE_1__ ref; } ;
struct TYPE_4__ {int (* domain_release ) (struct auth_domain*) ;} ;


 scalar_t__ atomic_dec_and_lock (int *,int *) ;
 int auth_domain_lock ;
 int hlist_del (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct auth_domain*) ;

void auth_domain_put(struct auth_domain *dom)
{
 if (atomic_dec_and_lock(&dom->ref.refcount, &auth_domain_lock)) {
  hlist_del(&dom->hash);
  dom->flavour->domain_release(dom);
  spin_unlock(&auth_domain_lock);
 }
}

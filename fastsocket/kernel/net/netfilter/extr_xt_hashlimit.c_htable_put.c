
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_hashlimit_htable {int node; int use; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int hashlimit_lock ;
 int hlist_del (int *) ;
 int htable_destroy (struct xt_hashlimit_htable*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void htable_put(struct xt_hashlimit_htable *hinfo)
{
 if (atomic_dec_and_test(&hinfo->use)) {
  spin_lock_bh(&hashlimit_lock);
  hlist_del(&hinfo->node);
  spin_unlock_bh(&hashlimit_lock);
  htable_destroy(hinfo);
 }
}

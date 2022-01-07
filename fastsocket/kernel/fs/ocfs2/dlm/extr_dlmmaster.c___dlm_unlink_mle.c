
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_master_list_entry {int master_hash_node; } ;
struct dlm_ctxt {int master_lock; int spinlock; } ;


 int assert_spin_locked (int *) ;
 int hlist_del_init (int *) ;
 int hlist_unhashed (int *) ;

void __dlm_unlink_mle(struct dlm_ctxt *dlm, struct dlm_master_list_entry *mle)
{
 assert_spin_locked(&dlm->spinlock);
 assert_spin_locked(&dlm->master_lock);

 if (!hlist_unhashed(&mle->master_hash_node))
  hlist_del_init(&mle->master_hash_node);
}

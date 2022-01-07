
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_head {int dummy; } ;
struct dlm_master_list_entry {int master_hash_node; int mnamehash; } ;
struct dlm_ctxt {int master_lock; } ;


 int assert_spin_locked (int *) ;
 struct hlist_head* dlm_master_hash (struct dlm_ctxt*,int ) ;
 int hlist_add_head (int *,struct hlist_head*) ;

void __dlm_insert_mle(struct dlm_ctxt *dlm, struct dlm_master_list_entry *mle)
{
 struct hlist_head *bucket;

 assert_spin_locked(&dlm->master_lock);

 bucket = dlm_master_hash(dlm, mle->mnamehash);
 hlist_add_head(&mle->master_hash_node, bucket);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int hash; } ;
struct hlist_head {int dummy; } ;
struct dlm_lock_resource {int hash_node; struct qstr lockname; } ;
struct dlm_ctxt {int spinlock; } ;


 int assert_spin_locked (int *) ;
 int dlm_lockres_get (struct dlm_lock_resource*) ;
 struct hlist_head* dlm_lockres_hash (struct dlm_ctxt*,int ) ;
 int hlist_add_head (int *,struct hlist_head*) ;

void __dlm_insert_lockres(struct dlm_ctxt *dlm,
         struct dlm_lock_resource *res)
{
 struct hlist_head *bucket;
 struct qstr *q;

 assert_spin_locked(&dlm->spinlock);

 q = &res->lockname;
 bucket = dlm_lockres_hash(dlm, q->hash);


 dlm_lockres_get(res);

 hlist_add_head(&res->hash_node, bucket);
}

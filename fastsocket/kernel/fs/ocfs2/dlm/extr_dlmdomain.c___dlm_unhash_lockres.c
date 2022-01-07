
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lock_resource {int hash_node; } ;


 int dlm_lockres_put (struct dlm_lock_resource*) ;
 int hlist_del_init (int *) ;
 int hlist_unhashed (int *) ;

void __dlm_unhash_lockres(struct dlm_lock_resource *lockres)
{
 if (!hlist_unhashed(&lockres->hash_node)) {
  hlist_del_init(&lockres->hash_node);
  dlm_lockres_put(lockres);
 }
}

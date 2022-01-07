
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cipso_v4_doi {int rcu; int list; int refcount; } ;


 int atomic_dec_and_test (int *) ;
 int call_rcu (int *,int ) ;
 int cipso_v4_cache_invalidate () ;
 int cipso_v4_doi_free_rcu ;
 int cipso_v4_doi_list_lock ;
 int list_del_rcu (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void cipso_v4_doi_putdef(struct cipso_v4_doi *doi_def)
{
 if (doi_def == ((void*)0))
  return;

 if (!atomic_dec_and_test(&doi_def->refcount))
  return;
 spin_lock(&cipso_v4_doi_list_lock);
 list_del_rcu(&doi_def->list);
 spin_unlock(&cipso_v4_doi_list_lock);

 cipso_v4_cache_invalidate();
 call_rcu(&doi_def->rcu, cipso_v4_doi_free_rcu);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cipso_v4_doi {int refcount; } ;


 int atomic_inc_not_zero (int *) ;
 struct cipso_v4_doi* cipso_v4_doi_search (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct cipso_v4_doi *cipso_v4_doi_getdef(u32 doi)
{
 struct cipso_v4_doi *doi_def;

 rcu_read_lock();
 doi_def = cipso_v4_doi_search(doi);
 if (doi_def == ((void*)0))
  goto doi_getdef_return;
 if (!atomic_inc_not_zero(&doi_def->refcount))
  doi_def = ((void*)0);

doi_getdef_return:
 rcu_read_unlock();
 return doi_def;
}

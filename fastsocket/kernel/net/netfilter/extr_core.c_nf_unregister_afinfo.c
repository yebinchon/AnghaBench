
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_afinfo {size_t family; } ;


 int afinfo_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * nf_afinfo ;
 int rcu_assign_pointer (int ,int *) ;
 int synchronize_rcu () ;

void nf_unregister_afinfo(const struct nf_afinfo *afinfo)
{
 mutex_lock(&afinfo_mutex);
 rcu_assign_pointer(nf_afinfo[afinfo->family], ((void*)0));
 mutex_unlock(&afinfo_mutex);
 synchronize_rcu();
}

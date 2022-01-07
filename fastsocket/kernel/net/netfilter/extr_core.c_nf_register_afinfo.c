
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_afinfo {size_t family; } ;


 int afinfo_mutex ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int * nf_afinfo ;
 int rcu_assign_pointer (int ,struct nf_afinfo const*) ;

int nf_register_afinfo(const struct nf_afinfo *afinfo)
{
 int err;

 err = mutex_lock_interruptible(&afinfo_mutex);
 if (err < 0)
  return err;
 rcu_assign_pointer(nf_afinfo[afinfo->family], afinfo);
 mutex_unlock(&afinfo_mutex);
 return 0;
}

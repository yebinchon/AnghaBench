
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_ct_ext_type {size_t id; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nf_ct_ext_type_mutex ;
 int * nf_ct_ext_types ;
 int rcu_assign_pointer (int ,int *) ;
 int rcu_barrier () ;
 int update_alloc_size (struct nf_ct_ext_type*) ;

void nf_ct_extend_unregister(struct nf_ct_ext_type *type)
{
 mutex_lock(&nf_ct_ext_type_mutex);
 rcu_assign_pointer(nf_ct_ext_types[type->id], ((void*)0));
 update_alloc_size(type);
 mutex_unlock(&nf_ct_ext_type_mutex);
 rcu_barrier();
}

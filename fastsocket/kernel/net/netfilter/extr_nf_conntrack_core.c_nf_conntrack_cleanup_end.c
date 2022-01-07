
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nf_conntrack_cleanup_init_net () ;
 int nf_ct_destroy ;
 int rcu_assign_pointer (int ,int *) ;

void nf_conntrack_cleanup_end(void)
{
 rcu_assign_pointer(nf_ct_destroy, ((void*)0));
 nf_conntrack_cleanup_init_net();
}

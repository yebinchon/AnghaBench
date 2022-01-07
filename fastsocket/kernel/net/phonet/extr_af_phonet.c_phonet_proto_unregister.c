
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phonet_protocol {int prot; } ;


 int BUG_ON (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct phonet_protocol** proto_tab ;
 int proto_tab_lock ;
 int proto_unregister (int ) ;
 int rcu_assign_pointer (struct phonet_protocol*,int *) ;
 int synchronize_rcu () ;

void phonet_proto_unregister(unsigned int protocol, struct phonet_protocol *pp)
{
 mutex_lock(&proto_tab_lock);
 BUG_ON(proto_tab[protocol] != pp);
 rcu_assign_pointer(proto_tab[protocol], ((void*)0));
 mutex_unlock(&proto_tab_lock);
 synchronize_rcu();
 proto_unregister(pp->prot);
}

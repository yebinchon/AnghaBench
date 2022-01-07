
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_nat_protocol {size_t protonum; } ;


 int nf_nat_lock ;
 int * nf_nat_protos ;
 int nf_nat_unknown_protocol ;
 int rcu_assign_pointer (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int synchronize_rcu () ;

void nf_nat_protocol_unregister(const struct nf_nat_protocol *proto)
{
 spin_lock_bh(&nf_nat_lock);
 rcu_assign_pointer(nf_nat_protos[proto->protonum],
      &nf_nat_unknown_protocol);
 spin_unlock_bh(&nf_nat_lock);
 synchronize_rcu();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_nat_protocol {size_t protonum; } ;


 int EBUSY ;
 int nf_nat_lock ;
 int ** nf_nat_protos ;
 int nf_nat_unknown_protocol ;
 int rcu_assign_pointer (int *,struct nf_nat_protocol const*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int nf_nat_protocol_register(const struct nf_nat_protocol *proto)
{
 int ret = 0;

 spin_lock_bh(&nf_nat_lock);
 if (nf_nat_protos[proto->protonum] != &nf_nat_unknown_protocol) {
  ret = -EBUSY;
  goto out;
 }
 rcu_assign_pointer(nf_nat_protos[proto->protonum], proto);
 out:
 spin_unlock_bh(&nf_nat_lock);
 return ret;
}

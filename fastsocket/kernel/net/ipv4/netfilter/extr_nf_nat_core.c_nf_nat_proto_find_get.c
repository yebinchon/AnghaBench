
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct nf_nat_protocol {int me; } ;


 struct nf_nat_protocol* __nf_nat_proto_find (int ) ;
 struct nf_nat_protocol nf_nat_unknown_protocol ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int try_module_get (int ) ;

const struct nf_nat_protocol *
nf_nat_proto_find_get(u_int8_t protonum)
{
 const struct nf_nat_protocol *p;

 rcu_read_lock();
 p = __nf_nat_proto_find(protonum);
 if (!try_module_get(p->me))
  p = &nf_nat_unknown_protocol;
 rcu_read_unlock();

 return p;
}

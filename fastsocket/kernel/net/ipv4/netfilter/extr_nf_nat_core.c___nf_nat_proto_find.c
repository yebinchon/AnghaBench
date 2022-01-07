
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int8_t ;
struct nf_nat_protocol {int dummy; } ;


 int * nf_nat_protos ;
 struct nf_nat_protocol const* rcu_dereference (int ) ;

__attribute__((used)) static inline const struct nf_nat_protocol *
__nf_nat_proto_find(u_int8_t protonum)
{
 return rcu_dereference(nf_nat_protos[protonum]);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int8_t ;
typedef size_t u_int16_t ;
struct nf_conntrack_l4proto {int dummy; } ;


 size_t AF_MAX ;
 struct nf_conntrack_l4proto nf_conntrack_l4proto_generic ;
 int ** nf_ct_protos ;
 struct nf_conntrack_l4proto* rcu_dereference (int ) ;
 scalar_t__ unlikely (int) ;

struct nf_conntrack_l4proto *
__nf_ct_l4proto_find(u_int16_t l3proto, u_int8_t l4proto)
{
 if (unlikely(l3proto >= AF_MAX || nf_ct_protos[l3proto] == ((void*)0)))
  return &nf_conntrack_l4proto_generic;

 return rcu_dereference(nf_ct_protos[l3proto][l4proto]);
}

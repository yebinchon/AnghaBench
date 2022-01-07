
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int AF_MAX ;
 int nf_conntrack_l3proto_generic ;
 int nf_conntrack_l4proto_generic ;
 int * nf_ct_l3protos ;
 int nf_ct_l4proto_register_sysctl (int *) ;
 int rcu_assign_pointer (int ,int *) ;

int nf_conntrack_proto_init(void)
{
 unsigned int i;
 int err;

 err = nf_ct_l4proto_register_sysctl(&nf_conntrack_l4proto_generic);
 if (err < 0)
  return err;

 for (i = 0; i < AF_MAX; i++)
  rcu_assign_pointer(nf_ct_l3protos[i],
       &nf_conntrack_l3proto_generic);
 return 0;
}

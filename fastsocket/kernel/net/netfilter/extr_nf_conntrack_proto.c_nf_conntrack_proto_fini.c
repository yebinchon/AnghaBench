
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int PF_MAX ;
 int kfree (int ) ;
 int nf_conntrack_l4proto_generic ;
 int nf_ct_l4proto_unregister_sysctl (int *) ;
 int * nf_ct_protos ;

void nf_conntrack_proto_fini(void)
{
 unsigned int i;

 nf_ct_l4proto_unregister_sysctl(&nf_conntrack_l4proto_generic);


 for (i = 0; i < PF_MAX; i++)
  kfree(nf_ct_protos[i]);
}

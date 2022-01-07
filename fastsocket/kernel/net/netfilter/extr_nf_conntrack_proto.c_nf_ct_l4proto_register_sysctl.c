
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_l4proto {int * ctl_table_users; int * ctl_table; int * ctl_table_header; int * ctl_compat_table; int ctl_compat_table_header; } ;


 int nf_ct_register_sysctl (int *,int ,int *,int *) ;
 int nf_ct_unregister_sysctl (int *,int *,int *) ;
 int nf_net_ipv4_netfilter_sysctl_path ;
 int nf_net_netfilter_sysctl_path ;

__attribute__((used)) static int nf_ct_l4proto_register_sysctl(struct nf_conntrack_l4proto *l4proto)
{
 int err = 0;
 return err;
}

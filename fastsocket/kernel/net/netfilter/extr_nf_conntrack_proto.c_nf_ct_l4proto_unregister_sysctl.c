
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_l4proto {int ctl_compat_table; int * ctl_compat_table_header; int * ctl_table_users; int ctl_table; int ** ctl_table_header; } ;


 int nf_ct_unregister_sysctl (int **,int ,int *) ;

__attribute__((used)) static void nf_ct_l4proto_unregister_sysctl(struct nf_conntrack_l4proto *l4proto)
{
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_l3proto {int * ctl_table; int ctl_table_path; int ctl_table_header; } ;


 int nf_ct_register_sysctl (int *,int ,int *,int *) ;

__attribute__((used)) static int nf_ct_l3proto_register_sysctl(struct nf_conntrack_l3proto *l3proto)
{
 int err = 0;
 return err;
}

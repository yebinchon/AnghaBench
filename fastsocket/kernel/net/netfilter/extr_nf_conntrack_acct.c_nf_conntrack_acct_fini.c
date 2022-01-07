
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 int acct_extend ;
 int init_net ;
 scalar_t__ net_eq (struct net*,int *) ;
 int nf_conntrack_acct_fini_sysctl (struct net*) ;
 int nf_ct_extend_unregister (int *) ;

void nf_conntrack_acct_fini(struct net *net)
{
 nf_conntrack_acct_fini_sysctl(net);
 if (net_eq(net, &init_net))
  nf_ct_extend_unregister(&acct_extend);
}

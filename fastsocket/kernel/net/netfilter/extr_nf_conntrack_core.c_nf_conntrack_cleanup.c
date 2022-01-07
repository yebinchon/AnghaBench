
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 int init_net ;
 int ip_ct_attach ;
 scalar_t__ net_eq (struct net*,int *) ;
 int nf_conntrack_cleanup_net (struct net*) ;
 int rcu_assign_pointer (int ,int *) ;
 int synchronize_net () ;

void nf_conntrack_cleanup(struct net *net)
{
 if (net_eq(net, &init_net))
  rcu_assign_pointer(ip_ct_attach, ((void*)0));




 synchronize_net();

 nf_conntrack_cleanup_net(net);
}

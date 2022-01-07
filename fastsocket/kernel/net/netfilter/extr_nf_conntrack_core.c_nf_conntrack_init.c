
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 int * destroy_conntrack ;
 int init_net ;
 int ip_ct_attach ;
 scalar_t__ net_eq (struct net*,int *) ;
 int * nf_conntrack_attach ;
 int nf_conntrack_cleanup_init_net () ;
 int nf_conntrack_init_init_net () ;
 int nf_conntrack_init_net (struct net*) ;
 int nf_ct_destroy ;
 int nf_ct_nat_offset ;
 int rcu_assign_pointer (int ,int *) ;

int nf_conntrack_init(struct net *net)
{
 int ret;

 if (net_eq(net, &init_net)) {
  ret = nf_conntrack_init_init_net();
  if (ret < 0)
   goto out_init_net;
 }
 ret = nf_conntrack_init_net(net);
 if (ret < 0)
  goto out_net;

 if (net_eq(net, &init_net)) {

  rcu_assign_pointer(ip_ct_attach, nf_conntrack_attach);
  rcu_assign_pointer(nf_ct_destroy, destroy_conntrack);


  rcu_assign_pointer(nf_ct_nat_offset, ((void*)0));
 }
 return 0;

out_net:
 if (net_eq(net, &init_net))
  nf_conntrack_cleanup_init_net();
out_init_net:
 return ret;
}

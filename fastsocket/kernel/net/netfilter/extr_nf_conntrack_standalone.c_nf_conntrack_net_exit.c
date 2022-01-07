
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 int nf_conntrack_cleanup (struct net*) ;
 int nf_conntrack_standalone_fini_proc (struct net*) ;
 int nf_conntrack_standalone_fini_sysctl (struct net*) ;

__attribute__((used)) static void nf_conntrack_net_exit(struct net *net)
{
 nf_conntrack_standalone_fini_sysctl(net);
 nf_conntrack_standalone_fini_proc(net);
 nf_conntrack_cleanup(net);
}

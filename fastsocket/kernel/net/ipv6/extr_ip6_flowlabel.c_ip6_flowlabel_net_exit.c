
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 int ip6_fl_purge (struct net*) ;
 int ip6_flowlabel_proc_fini (struct net*) ;

__attribute__((used)) static inline void ip6_flowlabel_net_exit(struct net *net)
{
 ip6_fl_purge(net);
 ip6_flowlabel_proc_fini(net);
}

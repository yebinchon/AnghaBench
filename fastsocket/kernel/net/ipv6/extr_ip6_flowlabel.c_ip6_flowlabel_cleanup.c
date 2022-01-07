
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int del_timer (int *) ;
 int ip6_fl_gc_timer ;
 int ip6_flowlabel_net_ops ;
 int unregister_pernet_subsys (int *) ;

void ip6_flowlabel_cleanup(void)
{
 del_timer(&ip6_fl_gc_timer);
 unregister_pernet_subsys(&ip6_flowlabel_net_ops);
}

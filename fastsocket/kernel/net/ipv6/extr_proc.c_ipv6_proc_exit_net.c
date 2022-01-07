
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 int proc_net_remove (struct net*,char*) ;

__attribute__((used)) static void ipv6_proc_exit_net(struct net *net)
{
 proc_net_remove(net, "sockstat6");
 proc_net_remove(net, "dev_snmp6");
 proc_net_remove(net, "snmp6");
}

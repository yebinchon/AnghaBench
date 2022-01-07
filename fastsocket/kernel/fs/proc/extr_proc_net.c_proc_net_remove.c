
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int proc_net; } ;


 int remove_proc_entry (char const*,int ) ;

void proc_net_remove(struct net *net, const char *name)
{
 remove_proc_entry(name, net->proc_net);
}

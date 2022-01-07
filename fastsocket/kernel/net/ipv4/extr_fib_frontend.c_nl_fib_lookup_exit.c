
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * fibnl; } ;
struct net {TYPE_1__ ipv4; } ;


 int netlink_kernel_release (int *) ;

__attribute__((used)) static void nl_fib_lookup_exit(struct net *net)
{
 netlink_kernel_release(net->ipv4.fibnl);
 net->ipv4.fibnl = ((void*)0);
}

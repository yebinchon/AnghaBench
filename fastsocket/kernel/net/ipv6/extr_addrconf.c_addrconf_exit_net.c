
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int devconf_all; int devconf_dflt; } ;
struct net {TYPE_1__ ipv6; } ;


 int __addrconf_sysctl_unregister (int ) ;
 struct net init_net ;
 int kfree (int ) ;

__attribute__((used)) static void addrconf_exit_net(struct net *net)
{




 if (net != &init_net) {
  kfree(net->ipv6.devconf_dflt);
  kfree(net->ipv6.devconf_all);
 }
}

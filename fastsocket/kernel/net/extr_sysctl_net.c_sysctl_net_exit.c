
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int list; } ;
struct net {TYPE_1__ sysctls; } ;


 int WARN_ON (int) ;
 int list_empty (int *) ;

__attribute__((used)) static void sysctl_net_exit(struct net *net)
{
 WARN_ON(!list_empty(&net->sysctls.list));
 return;
}

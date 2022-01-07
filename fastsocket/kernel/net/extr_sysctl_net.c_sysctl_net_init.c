
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net {int sysctls; } ;
struct TYPE_2__ {int default_set; } ;


 int is_seen ;
 TYPE_1__ net_sysctl_ro_root ;
 int setup_sysctl_set (int *,int *,int ) ;

__attribute__((used)) static int sysctl_net_init(struct net *net)
{
 setup_sysctl_set(&net->sysctls,
    &net_sysctl_ro_root.default_set,
    is_seen);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ip6_blk_hole_entry; int ip6_prohibit_entry; int ip6_null_entry; } ;
struct net {TYPE_1__ ipv6; } ;


 int kfree (int ) ;

__attribute__((used)) static void ip6_route_net_exit(struct net *net)
{
 kfree(net->ipv6.ip6_null_entry);




}

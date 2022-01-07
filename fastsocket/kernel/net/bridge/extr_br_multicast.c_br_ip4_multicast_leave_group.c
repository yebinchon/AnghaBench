
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_bridge_port {int dummy; } ;
struct net_bridge {int dummy; } ;
struct TYPE_2__ {int ip4; } ;
struct br_ip {int proto; TYPE_1__ u; } ;
typedef int __be32 ;


 int ETH_P_IP ;
 int br_multicast_leave_group (struct net_bridge*,struct net_bridge_port*,struct br_ip*) ;
 int htons (int ) ;
 scalar_t__ ipv4_is_local_multicast (int ) ;

__attribute__((used)) static void br_ip4_multicast_leave_group(struct net_bridge *br,
      struct net_bridge_port *port,
      __be32 group)
{
 struct br_ip br_group;

 if (ipv4_is_local_multicast(group))
  return;

 br_group.u.ip4 = group;
 br_group.proto = htons(ETH_P_IP);

 br_multicast_leave_group(br, port, &br_group);
}

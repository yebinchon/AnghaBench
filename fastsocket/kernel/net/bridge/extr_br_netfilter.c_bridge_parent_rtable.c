
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtable {int dummy; } ;
struct net_device {int br_port; } ;
struct net_bridge_port {TYPE_1__* br; } ;
struct TYPE_2__ {struct rtable fake_rtable; } ;


 struct net_bridge_port* rcu_dereference (int ) ;

__attribute__((used)) static inline struct rtable *bridge_parent_rtable(const struct net_device *dev)
{
 struct net_bridge_port *port = rcu_dereference(dev->br_port);

 return port ? &port->br->fake_rtable : ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int br_port; } ;
struct net_bridge_port {TYPE_1__* br; } ;
struct TYPE_2__ {struct net_device* dev; } ;


 struct net_bridge_port* rcu_dereference (int ) ;

__attribute__((used)) static inline struct net_device *bridge_parent(const struct net_device *dev)
{
 struct net_bridge_port *port = rcu_dereference(dev->br_port);

 return port ? port->br->dev : ((void*)0);
}

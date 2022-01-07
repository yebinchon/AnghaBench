
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net_bridge_port {int kobj; struct net_device* dev; int * br; } ;


 int dev_put (struct net_device*) ;
 int kobject_put (int *) ;

__attribute__((used)) static void destroy_nbp(struct net_bridge_port *p)
{
 struct net_device *dev = p->dev;

 p->br = ((void*)0);
 p->dev = ((void*)0);
 dev_put(dev);

 kobject_put(&p->kobj);
}

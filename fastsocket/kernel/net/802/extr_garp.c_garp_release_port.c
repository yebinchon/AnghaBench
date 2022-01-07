
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct garp_port* garp_port; } ;
struct garp_port {scalar_t__* applicants; } ;


 unsigned int GARP_APPLICATION_MAX ;
 int kfree (struct garp_port*) ;
 int rcu_assign_pointer (struct garp_port*,int *) ;
 int synchronize_rcu () ;

__attribute__((used)) static void garp_release_port(struct net_device *dev)
{
 struct garp_port *port = dev->garp_port;
 unsigned int i;

 for (i = 0; i <= GARP_APPLICATION_MAX; i++) {
  if (port->applicants[i])
   return;
 }
 rcu_assign_pointer(dev->garp_port, ((void*)0));
 synchronize_rcu();
 kfree(port);
}

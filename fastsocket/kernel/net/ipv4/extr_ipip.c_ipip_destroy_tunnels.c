
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipip_net {struct ip_tunnel*** tunnels; } ;
struct ip_tunnel {int dev; } ;


 int HASH_SIZE ;
 int unregister_netdevice (int ) ;

__attribute__((used)) static void ipip_destroy_tunnels(struct ipip_net *ipn)
{
 int prio;

 for (prio = 1; prio < 4; prio++) {
  int h;
  for (h = 0; h < HASH_SIZE; h++) {
   struct ip_tunnel *t;
   while ((t = ipn->tunnels[prio][h]) != ((void*)0))
    unregister_netdevice(t->dev);
  }
 }
}

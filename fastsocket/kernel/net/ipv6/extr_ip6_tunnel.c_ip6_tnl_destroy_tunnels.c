
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_tnl_net {struct ip6_tnl** tnls_wc; struct ip6_tnl** tnls_r_l; } ;
struct ip6_tnl {int dev; } ;


 int HASH_SIZE ;
 int unregister_netdevice (int ) ;

__attribute__((used)) static void ip6_tnl_destroy_tunnels(struct ip6_tnl_net *ip6n)
{
 int h;
 struct ip6_tnl *t;

 for (h = 0; h < HASH_SIZE; h++) {
  while ((t = ip6n->tnls_r_l[h]) != ((void*)0))
   unregister_netdevice(t->dev);
 }

 t = ip6n->tnls_wc[0];
 unregister_netdevice(t->dev);
}

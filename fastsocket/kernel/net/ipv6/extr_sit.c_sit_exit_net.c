
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sit_net {int fb_tunnel_dev; } ;
struct net {int dummy; } ;


 int kfree (struct sit_net*) ;
 struct sit_net* net_generic (struct net*,int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int sit_destroy_tunnels (struct sit_net*) ;
 int sit_net_id ;
 int unregister_netdevice (int ) ;

__attribute__((used)) static void sit_exit_net(struct net *net)
{
 struct sit_net *sitn;

 sitn = net_generic(net, sit_net_id);
 rtnl_lock();
 sit_destroy_tunnels(sitn);
 unregister_netdevice(sitn->fb_tunnel_dev);
 rtnl_unlock();
 kfree(sitn);
}

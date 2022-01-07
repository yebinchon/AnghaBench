
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct ipip_net {int fb_tunnel_dev; } ;


 int ipip_destroy_tunnels (struct ipip_net*) ;
 int ipip_net_id ;
 int kfree (struct ipip_net*) ;
 struct ipip_net* net_generic (struct net*,int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int unregister_netdevice (int ) ;

__attribute__((used)) static void ipip_exit_net(struct net *net)
{
 struct ipip_net *ipn;

 ipn = net_generic(net, ipip_net_id);
 rtnl_lock();
 ipip_destroy_tunnels(ipn);
 unregister_netdevice(ipn->fb_tunnel_dev);
 rtnl_unlock();
 kfree(ipn);
}

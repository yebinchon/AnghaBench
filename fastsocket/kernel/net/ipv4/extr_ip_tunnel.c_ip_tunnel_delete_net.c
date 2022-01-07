
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_tunnel_net {int tunnels; } ;


 int LIST_HEAD (int ) ;
 int ip_tunnel_destroy (struct ip_tunnel_net*,int *) ;
 int kfree (int ) ;
 int list ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int unregister_netdevice_many (int *) ;

void ip_tunnel_delete_net(struct ip_tunnel_net *itn)
{
 LIST_HEAD(list);

 rtnl_lock();
 ip_tunnel_destroy(itn, &list);
 unregister_netdevice_many(&list);
 rtnl_unlock();
 kfree(itn->tunnels);
}

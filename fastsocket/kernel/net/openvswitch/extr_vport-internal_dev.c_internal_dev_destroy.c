
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vport {int dummy; } ;
struct netdev_vport {int dev; } ;


 int dev_set_promiscuity (int ,int) ;
 struct netdev_vport* netdev_vport_priv (struct vport*) ;
 int netif_stop_queue (int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int unregister_netdevice (int ) ;

__attribute__((used)) static void internal_dev_destroy(struct vport *vport)
{
 struct netdev_vport *netdev_vport = netdev_vport_priv(vport);

 netif_stop_queue(netdev_vport->dev);
 rtnl_lock();
 dev_set_promiscuity(netdev_vport->dev, -1);


 unregister_netdevice(netdev_vport->dev);

 rtnl_unlock();
}

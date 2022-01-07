
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vport {int dummy; } ;
struct net_device {int dummy; } ;


 int free_netdev (struct net_device*) ;
 struct vport* ovs_internal_dev_get_vport (struct net_device*) ;
 int ovs_vport_free (struct vport*) ;

__attribute__((used)) static void internal_dev_destructor(struct net_device *dev)
{
 struct vport *vport = ovs_internal_dev_get_vport(dev);

 ovs_vport_free(vport);
 free_netdev(dev);
}

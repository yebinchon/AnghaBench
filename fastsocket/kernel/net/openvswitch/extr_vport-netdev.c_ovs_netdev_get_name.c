
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vport {int dummy; } ;
struct netdev_vport {TYPE_1__* dev; } ;
struct TYPE_2__ {char const* name; } ;


 struct netdev_vport* netdev_vport_priv (struct vport const*) ;

const char *ovs_netdev_get_name(const struct vport *vport)
{
 const struct netdev_vport *netdev_vport = netdev_vport_priv(vport);
 return netdev_vport->dev->name;
}

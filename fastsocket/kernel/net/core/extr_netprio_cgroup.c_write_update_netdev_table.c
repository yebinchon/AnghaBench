
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct netprio_map {scalar_t__ priomap_len; } ;
struct netdev_priomap_info {int priomap; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct netdev_priomap_info priomap_data; } ;


 scalar_t__ atomic_read (int *) ;
 int extend_netdev_table (struct net_device*,scalar_t__) ;
 int max_prioidx ;
 TYPE_1__* netdev_extended (struct net_device*) ;
 struct netprio_map* rtnl_dereference (int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static int write_update_netdev_table(struct net_device *dev)
{
 int ret = 0;
 u32 max_len;
 struct netprio_map *map;
 struct netdev_priomap_info *data;

 rtnl_lock();
 max_len = atomic_read(&max_prioidx) + 1;
 data = &netdev_extended(dev)->priomap_data;
 map = rtnl_dereference(data->priomap);
 if (!map || map->priomap_len < max_len)
  ret = extend_netdev_table(dev, max_len);
 rtnl_unlock();

 return ret;
}

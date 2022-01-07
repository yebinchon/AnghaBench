
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct netprio_map {size_t* priomap; } ;
struct netdev_priomap_info {int priomap; } ;
struct net_device {int dummy; } ;
struct cgroup {int dummy; } ;
struct cftype {int dummy; } ;
struct TYPE_4__ {size_t prioidx; } ;
struct TYPE_3__ {struct netdev_priomap_info priomap_data; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_2__* cgrp_netprio_state (struct cgroup*) ;
 struct net_device* dev_get_by_name (int *,char*) ;
 int dev_put (struct net_device*) ;
 int init_net ;
 int kfree (char*) ;
 char* kstrdup (char const*,int ) ;
 TYPE_1__* netdev_extended (struct net_device*) ;
 struct netprio_map* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 size_t simple_strtoul (char*,char**,int) ;
 int strlen (char*) ;
 char* strstr (char*,char*) ;
 int write_update_netdev_table (struct net_device*) ;

__attribute__((used)) static int write_priomap(struct cgroup *cgrp, struct cftype *cft,
    const char *buffer)
{
 char *devname = kstrdup(buffer, GFP_KERNEL);
 int ret = -EINVAL;
 u32 prioidx = cgrp_netprio_state(cgrp)->prioidx;
 u32 priority;
 char *priostr, *eps;
 struct net_device *dev;
 struct netprio_map *map;
 struct netdev_priomap_info *data;

 if (!devname)
  return -ENOMEM;




 if (strlen(devname) < 3)
  goto out_free_devname;

 priostr = strstr(devname, " ");
 if (!priostr)
  goto out_free_devname;





 *priostr = '\0';
 priostr++;





 if (*priostr == '\0')
  goto out_free_devname;

 priority = simple_strtoul(priostr, &eps , 10);
 if (*eps != ' ' && *eps != '\n' && *eps != '\0')
  goto out_free_devname;

 ret = -ENODEV;

 dev = dev_get_by_name(&init_net, devname);
 if (!dev)
  goto out_free_devname;

 ret = write_update_netdev_table(dev);
 if (ret < 0)
  goto out_put_dev;

 rcu_read_lock();
 data = &netdev_extended(dev)->priomap_data;
 map = rcu_dereference(data->priomap);
 if (map)
  map->priomap[prioidx] = priority;
 rcu_read_unlock();

out_put_dev:
 dev_put(dev);

out_free_devname:
 kfree(devname);
 return ret;
}

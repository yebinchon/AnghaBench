
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ifmap {int dummy; } ;
struct TYPE_2__ {int * rc; } ;
struct i1480u {TYPE_1__ wlp; } ;


 int BUG_ON (int ) ;
 struct i1480u* netdev_priv (struct net_device*) ;

int i1480u_set_config(struct net_device *net_dev, struct ifmap *map)
{
 int result;
 struct i1480u *i1480u = netdev_priv(net_dev);
 BUG_ON(i1480u->wlp.rc == ((void*)0));
 result = 0;
 return result;
}

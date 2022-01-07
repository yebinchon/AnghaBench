
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct dsa_switch {TYPE_1__* drv; } ;
struct dsa_slave_priv {struct dsa_switch* parent; } ;
struct TYPE_2__ {scalar_t__ (* get_sset_count ) (struct dsa_switch*) ;} ;


 int EOPNOTSUPP ;
 int ETH_SS_STATS ;
 struct dsa_slave_priv* netdev_priv (struct net_device*) ;
 scalar_t__ stub1 (struct dsa_switch*) ;

__attribute__((used)) static int dsa_slave_get_sset_count(struct net_device *dev, int sset)
{
 struct dsa_slave_priv *p = netdev_priv(dev);
 struct dsa_switch *ds = p->parent;

 if (sset == ETH_SS_STATS) {
  int count;

  count = 4;
  if (ds->drv->get_sset_count != ((void*)0))
   count += ds->drv->get_sset_count(ds);

  return count;
 }

 return -EOPNOTSUPP;
}

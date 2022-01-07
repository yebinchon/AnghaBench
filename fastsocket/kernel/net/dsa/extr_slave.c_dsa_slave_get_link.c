
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct dsa_slave_priv {TYPE_1__* phy; } ;
struct TYPE_2__ {int link; } ;


 int EOPNOTSUPP ;
 int genphy_update_link (TYPE_1__*) ;
 struct dsa_slave_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 dsa_slave_get_link(struct net_device *dev)
{
 struct dsa_slave_priv *p = netdev_priv(dev);

 if (p->phy != ((void*)0)) {
  genphy_update_link(p->phy);
  return p->phy->link;
 }

 return -EOPNOTSUPP;
}

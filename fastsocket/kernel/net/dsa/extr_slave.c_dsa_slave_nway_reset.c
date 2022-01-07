
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct dsa_slave_priv {int * phy; } ;


 int EOPNOTSUPP ;
 int genphy_restart_aneg (int *) ;
 struct dsa_slave_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int dsa_slave_nway_reset(struct net_device *dev)
{
 struct dsa_slave_priv *p = netdev_priv(dev);

 if (p->phy != ((void*)0))
  return genphy_restart_aneg(p->phy);

 return -EOPNOTSUPP;
}

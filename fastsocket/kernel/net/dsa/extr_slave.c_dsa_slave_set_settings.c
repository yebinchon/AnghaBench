
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_cmd {int dummy; } ;
struct dsa_slave_priv {int * phy; } ;


 int EOPNOTSUPP ;
 struct dsa_slave_priv* netdev_priv (struct net_device*) ;
 int phy_ethtool_sset (int *,struct ethtool_cmd*) ;

__attribute__((used)) static int
dsa_slave_set_settings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 struct dsa_slave_priv *p = netdev_priv(dev);

 if (p->phy != ((void*)0))
  return phy_ethtool_sset(p->phy, cmd);

 return -EOPNOTSUPP;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_cmd {int dummy; } ;
struct dsa_slave_priv {int * phy; } ;


 int EOPNOTSUPP ;
 struct dsa_slave_priv* netdev_priv (struct net_device*) ;
 int phy_ethtool_gset (int *,struct ethtool_cmd*) ;
 int phy_read_status (int *) ;

__attribute__((used)) static int
dsa_slave_get_settings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 struct dsa_slave_priv *p = netdev_priv(dev);
 int err;

 err = -EOPNOTSUPP;
 if (p->phy != ((void*)0)) {
  err = phy_read_status(p->phy);
  if (err == 0)
   err = phy_ethtool_gset(p->phy, cmd);
 }

 return err;
}

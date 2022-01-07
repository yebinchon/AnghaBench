
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mii_ioctl_data {int dummy; } ;
struct ifreq {int dummy; } ;
struct dsa_slave_priv {int * phy; } ;


 int EOPNOTSUPP ;
 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 struct dsa_slave_priv* netdev_priv (struct net_device*) ;
 int phy_mii_ioctl (int *,struct mii_ioctl_data*,int) ;

__attribute__((used)) static int dsa_slave_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct dsa_slave_priv *p = netdev_priv(dev);
 struct mii_ioctl_data *mii_data = if_mii(ifr);

 if (p->phy != ((void*)0))
  return phy_mii_ioctl(p->phy, mii_data, cmd);

 return -EOPNOTSUPP;
}

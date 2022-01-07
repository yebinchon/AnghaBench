
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_ethernet {int mii_info; } ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {int dummy; } ;
struct ifreq {int dummy; } ;


 int down (int *) ;
 int generic_mii_ioctl (int *,struct mii_ioctl_data*,int,unsigned int*) ;
 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 int mdio_sem ;
 struct octeon_ethernet* netdev_priv (struct net_device*) ;
 int up (int *) ;

int cvm_oct_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct octeon_ethernet *priv = netdev_priv(dev);
 struct mii_ioctl_data *data = if_mii(rq);
 unsigned int duplex_chg;
 int ret;

 down(&mdio_sem);
 ret = generic_mii_ioctl(&priv->mii_info, data, cmd, &duplex_chg);
 up(&mdio_sem);

 return ret;
}

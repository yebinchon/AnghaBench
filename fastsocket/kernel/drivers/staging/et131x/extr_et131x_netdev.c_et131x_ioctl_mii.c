
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mii_ioctl_data {int val_in; int reg_num; int val_out; int phy_id; } ;
struct ifreq {int dummy; } ;
struct TYPE_2__ {int xcvr_addr; } ;
struct et131x_adapter {TYPE_1__ Stats; } ;


 int CAP_NET_ADMIN ;
 int EOPNOTSUPP ;
 int EPERM ;
 int MiRead (struct et131x_adapter*,int ,int *) ;
 int MiWrite (struct et131x_adapter*,int ,int ) ;



 int capable (int ) ;
 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 struct et131x_adapter* netdev_priv (struct net_device*) ;

int et131x_ioctl_mii(struct net_device *netdev, struct ifreq *reqbuf, int cmd)
{
 int status = 0;
 struct et131x_adapter *etdev = netdev_priv(netdev);
 struct mii_ioctl_data *data = if_mii(reqbuf);

 switch (cmd) {
 case 130:
  data->phy_id = etdev->Stats.xcvr_addr;
  break;

 case 129:
  if (!capable(CAP_NET_ADMIN))
   status = -EPERM;
  else
   status = MiRead(etdev,
     data->reg_num, &data->val_out);
  break;

 case 128:
  if (!capable(CAP_NET_ADMIN))
   status = -EPERM;
  else
   status = MiWrite(etdev, data->reg_num,
      data->val_in);
  break;

 default:
  status = -EOPNOTSUPP;
 }
 return status;
}

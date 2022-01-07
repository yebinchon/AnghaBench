
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;


 int EOPNOTSUPP ;



 int et131x_ioctl_mii (struct net_device*,struct ifreq*,int) ;

int et131x_ioctl(struct net_device *netdev, struct ifreq *reqbuf, int cmd)
{
 int status = 0;

 switch (cmd) {
 case 130:
 case 129:
 case 128:
  status = et131x_ioctl_mii(netdev, reqbuf, cmd);
  break;

 default:
  status = -EOPNOTSUPP;
 }
 return status;
}

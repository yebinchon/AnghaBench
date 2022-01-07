
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net_bridge {int dummy; } ;
struct ifreq {int ifr_ifindex; } ;


 int EOPNOTSUPP ;



 int add_del_if (struct net_bridge*,int ,int) ;
 struct net_bridge* netdev_priv (struct net_device*) ;
 int old_dev_ioctl (struct net_device*,struct ifreq*,int) ;
 int pr_debug (char*,int) ;

int br_dev_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct net_bridge *br = netdev_priv(dev);

 switch(cmd) {
 case 128:
  return old_dev_ioctl(dev, rq, cmd);

 case 130:
 case 129:
  return add_del_if(br, rq->ifr_ifindex, cmd == 130);

 }

 pr_debug("Bridge does not support ioctl 0x%x\n", cmd);
 return -EOPNOTSUPP;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; struct net_device* master; } ;


 int ASSERT_RTNL () ;
 int EBUSY ;
 int IFF_SLAVE ;
 int RTM_NEWLINK ;
 int dev_hold (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int rtmsg_ifinfo (int ,struct net_device*,int ) ;
 int synchronize_net () ;

int netdev_set_master(struct net_device *slave, struct net_device *master)
{
 struct net_device *old = slave->master;

 ASSERT_RTNL();

 if (master) {
  if (old)
   return -EBUSY;
  dev_hold(master);
 }

 slave->master = master;

 synchronize_net();

 if (old)
  dev_put(old);

 if (master)
  slave->flags |= IFF_SLAVE;
 else
  slave->flags &= ~IFF_SLAVE;

 rtmsg_ifinfo(RTM_NEWLINK, slave, IFF_SLAVE);
 return 0;
}

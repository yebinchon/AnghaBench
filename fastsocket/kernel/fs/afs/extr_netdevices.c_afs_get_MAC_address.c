
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dev_addr; } ;


 int ARPHRD_ETHER ;
 int BUG_ON (int) ;
 int ENODEV ;
 size_t ETH_ALEN ;
 struct net_device* __dev_getfirstbyhwtype (int *,int ) ;
 int init_net ;
 int memcpy (int *,int ,size_t) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

int afs_get_MAC_address(u8 *mac, size_t maclen)
{
 struct net_device *dev;
 int ret = -ENODEV;

 BUG_ON(maclen != ETH_ALEN);

 rtnl_lock();
 dev = __dev_getfirstbyhwtype(&init_net, ARPHRD_ETHER);
 if (dev) {
  memcpy(mac, dev->dev_addr, maclen);
  ret = 0;
 }
 rtnl_unlock();
 return ret;
}

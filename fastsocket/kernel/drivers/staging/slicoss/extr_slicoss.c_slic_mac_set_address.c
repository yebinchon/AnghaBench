
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int addr_len; int dev_addr; } ;
struct adapter {int currmacaddr; } ;


 int EBUSY ;
 int memcpy (int ,int ,int ) ;
 scalar_t__ netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int slic_config_set (struct adapter*,int) ;

__attribute__((used)) static int slic_mac_set_address(struct net_device *dev, void *ptr)
{
 struct adapter *adapter = (struct adapter *)netdev_priv(dev);
 struct sockaddr *addr = ptr;

 if (netif_running(dev))
  return -EBUSY;
 if (!adapter)
  return -EBUSY;

 memcpy(dev->dev_addr, addr->sa_data, dev->addr_len);
 memcpy(adapter->currmacaddr, addr->sa_data, dev->addr_len);

 slic_config_set(adapter, 1);
 return 0;
}

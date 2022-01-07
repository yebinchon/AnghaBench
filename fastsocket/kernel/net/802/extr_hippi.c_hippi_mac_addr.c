
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int addr_len; int dev_addr; } ;


 int EBUSY ;
 int memcpy (int ,int ,int ) ;
 scalar_t__ netif_running (struct net_device*) ;

int hippi_mac_addr(struct net_device *dev, void *p)
{
 struct sockaddr *addr = p;
 if (netif_running(dev))
  return -EBUSY;
 memcpy(dev->dev_addr, addr->sa_data, dev->addr_len);
 return 0;
}

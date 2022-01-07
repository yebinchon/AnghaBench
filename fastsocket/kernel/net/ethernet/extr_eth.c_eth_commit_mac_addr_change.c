
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int addr_assign_type; int dev_addr; } ;


 int ETH_ALEN ;
 int NET_ADDR_RANDOM ;
 int memcpy (int ,int ,int ) ;

void eth_commit_mac_addr_change(struct net_device *dev, void *p)
{
 struct sockaddr *addr = p;

 memcpy(dev->dev_addr, addr->sa_data, ETH_ALEN);

 dev->addr_assign_type &= ~NET_ADDR_RANDOM;
}

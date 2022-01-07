
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev_addr; } ;


 int EADDRNOTAVAIL ;
 int is_valid_ether_addr (int ) ;

int eth_validate_addr(struct net_device *dev)
{
 if (!is_valid_ether_addr(dev->dev_addr))
  return -EADDRNOTAVAIL;

 return 0;
}

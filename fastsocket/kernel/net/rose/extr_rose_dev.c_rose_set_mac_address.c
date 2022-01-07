
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int flags; int addr_len; scalar_t__ dev_addr; } ;
typedef int rose_address ;


 int IFF_UP ;
 int memcpy (scalar_t__,int ,int ) ;
 int rose_add_loopback_node (int *) ;
 int rose_del_loopback_node (int *) ;

__attribute__((used)) static int rose_set_mac_address(struct net_device *dev, void *addr)
{
 struct sockaddr *sa = addr;
 int err;

 if (!memcpy(dev->dev_addr, sa->sa_data, dev->addr_len))
  return 0;

 if (dev->flags & IFF_UP) {
  err = rose_add_loopback_node((rose_address *)dev->dev_addr);
  if (err)
   return err;

  rose_del_loopback_node((rose_address *)dev->dev_addr);
 }

 memcpy(dev->dev_addr, sa->sa_data, dev->addr_len);

 return 0;
}

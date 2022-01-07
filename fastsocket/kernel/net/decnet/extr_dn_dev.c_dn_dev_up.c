
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ type; int name; int dev_addr; scalar_t__ dn_ptr; } ;
struct dn_ifaddr {int ifa_label; int ifa_scope; scalar_t__ ifa_flags; scalar_t__ ifa_address; scalar_t__ ifa_local; } ;
struct dn_dev {int dummy; } ;
typedef scalar_t__ __le16 ;


 scalar_t__ ARPHRD_ETHER ;
 scalar_t__ ARPHRD_LOOPBACK ;
 int RT_SCOPE_UNIVERSE ;
 scalar_t__ decnet_address ;
 int dev_hold (struct net_device*) ;
 int dev_put (struct net_device*) ;
 struct dn_ifaddr* dn_dev_alloc_ifa () ;
 struct dn_dev* dn_dev_create (struct net_device*,int*) ;
 scalar_t__ dn_dev_set_default (struct net_device*,int ) ;
 int dn_dev_set_ifa (struct net_device*,struct dn_ifaddr*) ;
 scalar_t__ dn_eth2dn (int ) ;
 int dn_hiord ;
 scalar_t__ memcmp (int ,int ,int) ;
 int strcpy (int ,int ) ;

void dn_dev_up(struct net_device *dev)
{
 struct dn_ifaddr *ifa;
 __le16 addr = decnet_address;
 int maybe_default = 0;
 struct dn_dev *dn_db = (struct dn_dev *)dev->dn_ptr;

 if ((dev->type != ARPHRD_ETHER) && (dev->type != ARPHRD_LOOPBACK))
  return;







 if (dn_db == ((void*)0)) {
  int err;
  dn_db = dn_dev_create(dev, &err);
  if (dn_db == ((void*)0))
   return;
 }

 if (dev->type == ARPHRD_ETHER) {
  if (memcmp(dev->dev_addr, dn_hiord, 4) != 0)
   return;
  addr = dn_eth2dn(dev->dev_addr);
  maybe_default = 1;
 }

 if (addr == 0)
  return;

 if ((ifa = dn_dev_alloc_ifa()) == ((void*)0))
  return;

 ifa->ifa_local = ifa->ifa_address = addr;
 ifa->ifa_flags = 0;
 ifa->ifa_scope = RT_SCOPE_UNIVERSE;
 strcpy(ifa->ifa_label, dev->name);

 dn_dev_set_ifa(dev, ifa);





 if (maybe_default) {
  dev_hold(dev);
  if (dn_dev_set_default(dev, 0))
   dev_put(dev);
 }
}

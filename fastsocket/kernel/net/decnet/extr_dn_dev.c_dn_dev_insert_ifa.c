
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ type; int dev_addr; } ;
struct dn_ifaddr {scalar_t__ ifa_local; struct dn_ifaddr* ifa_next; } ;
struct dn_dev {struct dn_ifaddr* ifa_list; struct net_device* dev; } ;


 scalar_t__ ARPHRD_ETHER ;
 int ASSERT_RTNL () ;
 int EEXIST ;
 int ETH_ALEN ;
 int NETDEV_UP ;
 int RTM_NEWADDR ;
 int blocking_notifier_call_chain (int *,int ,struct dn_ifaddr*) ;
 int dev_mc_add (struct net_device*,unsigned char*,int ,int ) ;
 int dn_dn2eth (unsigned char*,scalar_t__) ;
 scalar_t__ dn_eth2dn (int ) ;
 int dn_ifaddr_notify (int ,struct dn_ifaddr*) ;
 int dnaddr_chain ;

__attribute__((used)) static int dn_dev_insert_ifa(struct dn_dev *dn_db, struct dn_ifaddr *ifa)
{
 struct net_device *dev = dn_db->dev;
 struct dn_ifaddr *ifa1;
 unsigned char mac_addr[6];

 ASSERT_RTNL();


 for(ifa1 = dn_db->ifa_list; ifa1; ifa1 = ifa1->ifa_next) {
  if (ifa1->ifa_local == ifa->ifa_local)
   return -EEXIST;
 }

 if (dev->type == ARPHRD_ETHER) {
  if (ifa->ifa_local != dn_eth2dn(dev->dev_addr)) {
   dn_dn2eth(mac_addr, ifa->ifa_local);
   dev_mc_add(dev, mac_addr, ETH_ALEN, 0);
  }
 }

 ifa->ifa_next = dn_db->ifa_list;
 dn_db->ifa_list = ifa;

 dn_ifaddr_notify(RTM_NEWADDR, ifa);
 blocking_notifier_call_chain(&dnaddr_chain, NETDEV_UP, ifa);

 return 0;
}

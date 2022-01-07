
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev_addr; } ;
struct in_ifaddr {int ifa_local; struct in_ifaddr* ifa_next; } ;
struct in_device {struct in_ifaddr* ifa_list; } ;


 int ARPOP_REQUEST ;
 int ETH_P_ARP ;
 int arp_send (int ,int ,int ,struct net_device*,int ,int *,int ,int *) ;

__attribute__((used)) static void inetdev_send_gratuitous_arp(struct net_device *dev,
     struct in_device *in_dev)

{
 struct in_ifaddr *ifa;

 for (ifa = in_dev->ifa_list; ifa;
      ifa = ifa->ifa_next) {
  arp_send(ARPOP_REQUEST, ETH_P_ARP,
    ifa->ifa_local, dev,
    ifa->ifa_local, ((void*)0),
    dev->dev_addr, ((void*)0));
 }
}

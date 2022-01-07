
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int type; int addr_len; int broadcast; } ;
typedef int __be32 ;







 int EINVAL ;
 int ip_eth_mc_map (int ,int *) ;
 int ip_ib_mc_map (int ,int ,int *) ;
 int ip_tr_mc_map (int ,int *) ;
 int memcpy (int *,int ,int ) ;

int arp_mc_map(__be32 addr, u8 *haddr, struct net_device *dev, int dir)
{
 switch (dev->type) {
 case 132:
 case 131:
 case 130:
  ip_eth_mc_map(addr, haddr);
  return 0;
 case 129:
  ip_tr_mc_map(addr, haddr);
  return 0;
 case 128:
  ip_ib_mc_map(addr, dev->broadcast, haddr);
  return 0;
 default:
  if (dir) {
   memcpy(haddr, dev->broadcast, dev->addr_len);
   return 0;
  }
 }
 return -EINVAL;
}

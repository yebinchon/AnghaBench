
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int type; int addr_len; int broadcast; } ;
struct in6_addr {int dummy; } ;
 int EINVAL ;
 int ipv6_arcnet_mc_map (struct in6_addr*,char*) ;
 int ipv6_eth_mc_map (struct in6_addr*,char*) ;
 int ipv6_ib_mc_map (struct in6_addr*,int ,char*) ;
 int ipv6_tr_mc_map (struct in6_addr*,char*) ;
 int memcpy (char*,int ,int ) ;

int ndisc_mc_map(struct in6_addr *addr, char *buf, struct net_device *dev, int dir)
{
 switch (dev->type) {
 case 132:
 case 130:
 case 131:
  ipv6_eth_mc_map(addr, buf);
  return 0;
 case 129:
  ipv6_tr_mc_map(addr,buf);
  return 0;
 case 133:
  ipv6_arcnet_mc_map(addr, buf);
  return 0;
 case 128:
  ipv6_ib_mc_map(addr, dev->broadcast, buf);
  return 0;
 default:
  if (dir) {
   memcpy(buf, dev->broadcast, dev->addr_len);
   return 0;
  }
 }
 return -EINVAL;
}

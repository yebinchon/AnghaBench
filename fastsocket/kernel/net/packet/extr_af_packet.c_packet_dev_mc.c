
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_mclist {int type; int addr; int alen; } ;
struct net_device {int dummy; } ;






 int dev_mc_add (struct net_device*,int ,int ,int ) ;
 int dev_mc_delete (struct net_device*,int ,int ,int ) ;
 int dev_set_allmulti (struct net_device*,int) ;
 int dev_set_promiscuity (struct net_device*,int) ;
 int dev_unicast_add (struct net_device*,int ) ;
 int dev_unicast_delete (struct net_device*,int ) ;

__attribute__((used)) static int packet_dev_mc(struct net_device *dev, struct packet_mclist *i,
    int what)
{
 switch (i->type) {
 case 130:
  if (what > 0)
   return dev_mc_add(dev, i->addr, i->alen, 0);
  else
   return dev_mc_delete(dev, i->addr, i->alen, 0);
  break;
 case 129:
  return dev_set_promiscuity(dev, what);
  break;
 case 131:
  return dev_set_allmulti(dev, what);
  break;
 case 128:
  if (what > 0)
   return dev_unicast_add(dev, i->addr);
  else
   return dev_unicast_delete(dev, i->addr);
  break;
 default:
  break;
 }
 return 0;
}

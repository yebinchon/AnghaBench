
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_mclist {scalar_t__ ifindex; struct packet_mclist* next; } ;
struct net_device {scalar_t__ ifindex; } ;


 int packet_dev_mc (struct net_device*,struct packet_mclist*,int) ;

__attribute__((used)) static void packet_dev_mclist(struct net_device *dev, struct packet_mclist *i, int what)
{
 for ( ; i; i = i->next) {
  if (i->ifindex == dev->ifindex)
   packet_dev_mc(dev, i, what);
 }
}

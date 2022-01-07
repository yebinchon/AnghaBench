
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct atalk_addr {scalar_t__ s_net; scalar_t__ s_node; } ;
struct TYPE_2__ {scalar_t__ s_net; scalar_t__ s_node; } ;
struct aarp_entry {struct aarp_entry* next; struct net_device* dev; TYPE_1__ target_addr; } ;



__attribute__((used)) static struct aarp_entry *__aarp_find_entry(struct aarp_entry *list,
         struct net_device *dev,
         struct atalk_addr *sat)
{
 while (list) {
  if (list->target_addr.s_net == sat->s_net &&
      list->target_addr.s_node == sat->s_node &&
      list->dev == dev)
   break;
  list = list->next;
 }

 return list;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct aarp_entry {struct aarp_entry* next; struct net_device* dev; } ;


 int __aarp_expire (struct aarp_entry*) ;

__attribute__((used)) static void __aarp_expire_device(struct aarp_entry **n, struct net_device *dev)
{
 struct aarp_entry *t;

 while (*n)
  if ((*n)->dev == dev) {
   t = *n;
   *n = (*n)->next;
   __aarp_expire(t);
  } else
   n = &((*n)->next);
}

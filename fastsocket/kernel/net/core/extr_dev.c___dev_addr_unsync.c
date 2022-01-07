
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dev_addr_list {int da_addrlen; int da_addr; scalar_t__ da_synced; struct dev_addr_list* next; } ;


 int __dev_addr_delete (struct dev_addr_list**,int*,int ,int ,int ) ;

void __dev_addr_unsync(struct dev_addr_list **to, int *to_count,
         struct dev_addr_list **from, int *from_count)
{
 struct dev_addr_list *da, *next;

 da = *from;
 while (da != ((void*)0)) {
  next = da->next;
  if (da->da_synced) {
   __dev_addr_delete(to, to_count,
       da->da_addr, da->da_addrlen, 0);
   da->da_synced = 0;
   __dev_addr_delete(from, from_count,
       da->da_addr, da->da_addrlen, 0);
  }
  da = next;
 }
}

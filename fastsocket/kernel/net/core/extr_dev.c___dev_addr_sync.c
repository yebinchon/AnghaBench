
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dev_addr_list {int da_synced; int da_users; int da_addrlen; int da_addr; struct dev_addr_list* next; } ;


 int __dev_addr_add (struct dev_addr_list**,int*,int ,int ,int ) ;
 int __dev_addr_delete (struct dev_addr_list**,int*,int ,int ,int ) ;

int __dev_addr_sync(struct dev_addr_list **to, int *to_count,
      struct dev_addr_list **from, int *from_count)
{
 struct dev_addr_list *da, *next;
 int err = 0;

 da = *from;
 while (da != ((void*)0)) {
  next = da->next;
  if (!da->da_synced) {
   err = __dev_addr_add(to, to_count,
          da->da_addr, da->da_addrlen, 0);
   if (err < 0)
    break;
   da->da_synced = 1;
   da->da_users++;
  } else if (da->da_users == 1) {
   __dev_addr_delete(to, to_count,
       da->da_addr, da->da_addrlen, 0);
   __dev_addr_delete(from, from_count,
       da->da_addr, da->da_addrlen, 0);
  }
  da = next;
 }
 return err;
}

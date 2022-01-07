
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dev_addr_list {int da_addrlen; int da_gusers; int da_users; struct dev_addr_list* next; int da_addr; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 struct dev_addr_list* kzalloc (int,int ) ;
 scalar_t__ memcmp (int ,void*,int) ;
 int memcpy (int ,void*,int) ;

int __dev_addr_add(struct dev_addr_list **list, int *count,
     void *addr, int alen, int glbl)
{
 struct dev_addr_list *da;

 for (da = *list; da != ((void*)0); da = da->next) {
  if (memcmp(da->da_addr, addr, da->da_addrlen) == 0 &&
      da->da_addrlen == alen) {
   if (glbl) {
    int old_glbl = da->da_gusers;
    da->da_gusers = 1;
    if (old_glbl)
     return 0;
   }
   da->da_users++;
   return 0;
  }
 }

 da = kzalloc(sizeof(*da), GFP_ATOMIC);
 if (da == ((void*)0))
  return -ENOMEM;
 memcpy(da->da_addr, addr, alen);
 da->da_addrlen = alen;
 da->da_users = 1;
 da->da_gusers = glbl ? 1 : 0;
 da->next = *list;
 *list = da;
 (*count)++;
 return 0;
}

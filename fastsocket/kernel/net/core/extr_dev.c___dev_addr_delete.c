
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dev_addr_list {int da_addrlen; int da_gusers; struct dev_addr_list* next; scalar_t__ da_users; int da_addr; } ;


 int ENOENT ;
 int kfree (struct dev_addr_list*) ;
 scalar_t__ memcmp (int ,void*,int) ;

int __dev_addr_delete(struct dev_addr_list **list, int *count,
        void *addr, int alen, int glbl)
{
 struct dev_addr_list *da;

 for (; (da = *list) != ((void*)0); list = &da->next) {
  if (memcmp(da->da_addr, addr, da->da_addrlen) == 0 &&
      alen == da->da_addrlen) {
   if (glbl) {
    int old_glbl = da->da_gusers;
    da->da_gusers = 0;
    if (old_glbl == 0)
     break;
   }
   if (--da->da_users)
    return 0;

   *list = da->next;
   kfree(da);
   (*count)--;
   return 0;
  }
 }
 return -ENOENT;
}

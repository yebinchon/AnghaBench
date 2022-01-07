
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dev_addr_list {scalar_t__ da_users; scalar_t__ da_gusers; struct dev_addr_list* next; } ;


 int kfree (struct dev_addr_list*) ;
 int printk (char*,scalar_t__) ;

__attribute__((used)) static void __dev_addr_discard(struct dev_addr_list **list)
{
 struct dev_addr_list *tmp;

 while (*list != ((void*)0)) {
  tmp = *list;
  *list = tmp->next;
  if (tmp->da_users > tmp->da_gusers)
   printk("__dev_addr_discard: address leakage! "
          "da_users=%d\n", tmp->da_users);
  kfree(tmp);
 }
}

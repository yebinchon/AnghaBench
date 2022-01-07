
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reserve_info {struct reserve_info* next; } ;



struct reserve_info *add_reserve_entry(struct reserve_info *list,
          struct reserve_info *new)
{
 struct reserve_info *last;

 new->next = ((void*)0);

 if (! list)
  return new;

 for (last = list; last->next; last = last->next)
  ;

 last->next = new;

 return list;
}

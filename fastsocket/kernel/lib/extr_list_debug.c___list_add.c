
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {struct list_head* next; struct list_head* prev; } ;


 int WARN (int,char*,struct list_head*,struct list_head*,struct list_head*) ;

void __list_add(struct list_head *new,
         struct list_head *prev,
         struct list_head *next)
{
 WARN(next->prev != prev,
  "list_add corruption. next->prev should be "
  "prev (%p), but was %p. (next=%p).\n",
  prev, next->prev, next);
 WARN(prev->next != next,
  "list_add corruption. prev->next should be "
  "next (%p), but was %p. (prev=%p).\n",
  next, prev->next, prev);
 next->prev = new;
 new->next = next;
 new->prev = prev;
 prev->next = new;
}

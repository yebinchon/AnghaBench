
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int prev; int * next; } ;
struct timer_list {struct list_head entry; } ;


 int LIST_POISON2 ;
 int __list_del (int ,int *) ;
 int debug_deactivate (struct timer_list*) ;

__attribute__((used)) static inline void detach_timer(struct timer_list *timer,
    int clear_pending)
{
 struct list_head *entry = &timer->entry;

 debug_deactivate(timer);

 __list_del(entry->prev, entry->next);
 if (clear_pending)
  entry->next = ((void*)0);
 entry->prev = LIST_POISON2;
}

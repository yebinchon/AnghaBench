
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {void (* function ) (unsigned long) ;unsigned long data; } ;
struct lock_class_key {int dummy; } ;


 int init_timer_on_stack_key (struct timer_list*,char const*,struct lock_class_key*) ;
 int timer_set_deferrable (struct timer_list*) ;

void setup_deferrable_timer_on_stack_key(struct timer_list *timer,
      const char *name,
      struct lock_class_key *key,
      void (*function)(unsigned long),
      unsigned long data)
{
 timer->function = function;
 timer->data = data;
 init_timer_on_stack_key(timer, name, key);
 timer_set_deferrable(timer);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct lock_class_key {int dummy; } ;


 int init_timer_key (struct timer_list*,char const*,struct lock_class_key*) ;
 int timer_set_deferrable (struct timer_list*) ;

void init_timer_deferrable_key(struct timer_list *timer,
          const char *name,
          struct lock_class_key *key)
{
 init_timer_key(timer, name, key);
 timer_set_deferrable(timer);
}

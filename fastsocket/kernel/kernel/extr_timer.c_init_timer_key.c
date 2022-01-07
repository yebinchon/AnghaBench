
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct lock_class_key {int dummy; } ;


 int __init_timer (struct timer_list*,char const*,struct lock_class_key*) ;
 int debug_init (struct timer_list*) ;

void init_timer_key(struct timer_list *timer,
      const char *name,
      struct lock_class_key *key)
{
 debug_init(timer);
 __init_timer(timer, name, key);
}

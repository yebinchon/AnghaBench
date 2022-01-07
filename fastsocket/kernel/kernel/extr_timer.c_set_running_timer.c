
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tvec_base {struct timer_list* running_timer; } ;
struct timer_list {int dummy; } ;



__attribute__((used)) static inline void set_running_timer(struct tvec_base *base,
     struct timer_list *timer)
{



}

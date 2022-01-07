
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tvec_base {int dummy; } ;
struct timer_list {struct tvec_base* base; } ;


 unsigned long tbase_get_deferrable (struct tvec_base*) ;

__attribute__((used)) static inline void
timer_set_base(struct timer_list *timer, struct tvec_base *new_base)
{
 timer->base = (struct tvec_base *)((unsigned long)(new_base) |
          tbase_get_deferrable(timer->base));
}

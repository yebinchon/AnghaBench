
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tvec_base {int dummy; } ;
struct timer_list {struct tvec_base* base; } ;


 unsigned long TBASE_DEFERRABLE_FLAG ;

__attribute__((used)) static inline void timer_set_deferrable(struct timer_list *timer)
{
 timer->base = ((struct tvec_base *)((unsigned long)(timer->base) |
           TBASE_DEFERRABLE_FLAG));
}

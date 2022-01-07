
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pcnt; int bcnt; } ;
struct ip6t_entry {TYPE_1__ counters; } ;
struct ip6t_counters {int dummy; } ;


 int SET_COUNTER (struct ip6t_counters,int ,int ) ;

__attribute__((used)) static inline int
set_entry_to_counter(const struct ip6t_entry *e,
       struct ip6t_counters total[],
       unsigned int *i)
{
 SET_COUNTER(total[*i], e->counters.bcnt, e->counters.pcnt);

 (*i)++;
 return 0;
}

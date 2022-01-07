
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xt_counters {int dummy; } ;
struct TYPE_2__ {int pcnt; int bcnt; } ;
struct ip6t_entry {TYPE_1__ counters; } ;


 int ADD_COUNTER (struct xt_counters,int ,int ) ;

__attribute__((used)) static inline int
add_entry_to_counter(const struct ip6t_entry *e,
       struct xt_counters total[],
       unsigned int *i)
{
 ADD_COUNTER(total[*i], e->counters.bcnt, e->counters.pcnt);

 (*i)++;
 return 0;
}

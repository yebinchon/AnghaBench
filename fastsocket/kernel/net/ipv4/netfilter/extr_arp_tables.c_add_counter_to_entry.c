
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_counters {int pcnt; int bcnt; } ;
struct arpt_entry {int counters; } ;


 int ADD_COUNTER (int ,int ,int ) ;

__attribute__((used)) static int
add_counter_to_entry(struct arpt_entry *e,
       const struct xt_counters addme[],
       unsigned int *i)
{
 ADD_COUNTER(e->counters, addme[*i].bcnt, addme[*i].pcnt);

 (*i)++;
 return 0;
}

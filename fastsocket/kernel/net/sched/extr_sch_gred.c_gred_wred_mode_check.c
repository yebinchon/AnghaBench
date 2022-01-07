
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gred_sched_data {scalar_t__ prio; } ;
struct gred_sched {int DPs; struct gred_sched_data** tab; } ;
struct Qdisc {int dummy; } ;


 struct gred_sched* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static inline int gred_wred_mode_check(struct Qdisc *sch)
{
 struct gred_sched *table = qdisc_priv(sch);
 int i;


 for (i = 0; i < table->DPs; i++) {
  struct gred_sched_data *q = table->tab[i];
  int n;

  if (q == ((void*)0))
   continue;

  for (n = 0; n < table->DPs; n++)
   if (table->tab[n] && table->tab[n] != q &&
       table->tab[n]->prio == q->prio)
    return 1;
 }

 return 0;
}

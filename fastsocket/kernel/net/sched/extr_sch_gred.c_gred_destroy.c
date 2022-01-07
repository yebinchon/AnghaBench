
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gred_sched {int DPs; scalar_t__* tab; } ;
struct Qdisc {int dummy; } ;


 int gred_destroy_vq (scalar_t__) ;
 struct gred_sched* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static void gred_destroy(struct Qdisc *sch)
{
 struct gred_sched *table = qdisc_priv(sch);
 int i;

 for (i = 0; i < table->DPs; i++) {
  if (table->tab[i])
   gred_destroy_vq(table->tab[i]);
 }
}

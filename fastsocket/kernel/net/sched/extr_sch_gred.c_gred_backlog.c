
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gred_sched_data {unsigned int backlog; } ;
struct gred_sched {int dummy; } ;
struct TYPE_2__ {unsigned int backlog; } ;
struct Qdisc {TYPE_1__ qstats; } ;


 scalar_t__ gred_wred_mode (struct gred_sched*) ;

__attribute__((used)) static inline unsigned int gred_backlog(struct gred_sched *table,
     struct gred_sched_data *q,
     struct Qdisc *sch)
{
 if (gred_wred_mode(table))
  return sch->qstats.backlog;
 else
  return q->backlog;
}

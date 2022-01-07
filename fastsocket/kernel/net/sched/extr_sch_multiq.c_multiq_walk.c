
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdisc_walker {int stop; scalar_t__ count; scalar_t__ skip; scalar_t__ (* fn ) (struct Qdisc*,int,struct qdisc_walker*) ;} ;
struct multiq_sched_data {int bands; } ;
struct Qdisc {int dummy; } ;


 struct multiq_sched_data* qdisc_priv (struct Qdisc*) ;
 scalar_t__ stub1 (struct Qdisc*,int,struct qdisc_walker*) ;

__attribute__((used)) static void multiq_walk(struct Qdisc *sch, struct qdisc_walker *arg)
{
 struct multiq_sched_data *q = qdisc_priv(sch);
 int band;

 if (arg->stop)
  return;

 for (band = 0; band < q->bands; band++) {
  if (arg->count < arg->skip) {
   arg->count++;
   continue;
  }
  if (arg->fn(sch, band+1, arg) < 0) {
   arg->stop = 1;
   break;
  }
  arg->count++;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct multiq_sched_data {unsigned long bands; } ;
struct Qdisc {int dummy; } ;


 unsigned long TC_H_MIN (int ) ;
 struct multiq_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static unsigned long multiq_get(struct Qdisc *sch, u32 classid)
{
 struct multiq_sched_data *q = qdisc_priv(sch);
 unsigned long band = TC_H_MIN(classid);

 if (band - 1 >= q->bands)
  return 0;
 return band;
}

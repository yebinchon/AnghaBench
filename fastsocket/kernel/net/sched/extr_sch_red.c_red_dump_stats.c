
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tc_red_xstats {scalar_t__ marked; int other; int pdrop; scalar_t__ early; } ;
struct TYPE_2__ {scalar_t__ forced_mark; scalar_t__ prob_mark; int other; int pdrop; scalar_t__ forced_drop; scalar_t__ prob_drop; } ;
struct red_sched_data {TYPE_1__ stats; } ;
struct gnet_dump {int dummy; } ;
struct Qdisc {int dummy; } ;
typedef int st ;


 int gnet_stats_copy_app (struct gnet_dump*,struct tc_red_xstats*,int) ;
 struct red_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static int red_dump_stats(struct Qdisc *sch, struct gnet_dump *d)
{
 struct red_sched_data *q = qdisc_priv(sch);
 struct tc_red_xstats st = {
  .early = q->stats.prob_drop + q->stats.forced_drop,
  .pdrop = q->stats.pdrop,
  .other = q->stats.other,
  .marked = q->stats.prob_mark + q->stats.forced_mark,
 };

 return gnet_stats_copy_app(d, &st, sizeof(st));
}

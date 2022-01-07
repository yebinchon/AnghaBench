
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_netem_corrupt {int correlation; int probability; } ;
struct nlattr {int dummy; } ;
struct netem_sched_data {int corrupt_cor; int corrupt; } ;
struct Qdisc {int dummy; } ;


 int init_crandom (int *,int ) ;
 struct tc_netem_corrupt* nla_data (struct nlattr const*) ;
 struct netem_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static void get_corrupt(struct Qdisc *sch, const struct nlattr *attr)
{
 struct netem_sched_data *q = qdisc_priv(sch);
 const struct tc_netem_corrupt *r = nla_data(attr);

 q->corrupt = r->probability;
 init_crandom(&q->corrupt_cor, r->correlation);
}

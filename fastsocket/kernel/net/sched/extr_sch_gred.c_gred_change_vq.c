
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tc_gred_qopt {int Scell_log; int Plog; int Wlog; int qth_max; int qth_min; int limit; } ;
struct gred_sched_data {int DP; int prio; scalar_t__ backlog; int parms; int limit; } ;
struct gred_sched {struct gred_sched_data** tab; } ;
struct Qdisc {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct gred_sched_data* kzalloc (int,int ) ;
 struct gred_sched* qdisc_priv (struct Qdisc*) ;
 int red_end_of_idle_period (int *) ;
 int red_set_parms (int *,int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static inline int gred_change_vq(struct Qdisc *sch, int dp,
     struct tc_gred_qopt *ctl, int prio, u8 *stab)
{
 struct gred_sched *table = qdisc_priv(sch);
 struct gred_sched_data *q;

 if (table->tab[dp] == ((void*)0)) {
  table->tab[dp] = kzalloc(sizeof(*q), GFP_KERNEL);
  if (table->tab[dp] == ((void*)0))
   return -ENOMEM;
 }

 q = table->tab[dp];
 q->DP = dp;
 q->prio = prio;
 q->limit = ctl->limit;

 if (q->backlog == 0)
  red_end_of_idle_period(&q->parms);

 red_set_parms(&q->parms,
        ctl->qth_min, ctl->qth_max, ctl->Wlog, ctl->Plog,
        ctl->Scell_log, stab);

 return 0;
}

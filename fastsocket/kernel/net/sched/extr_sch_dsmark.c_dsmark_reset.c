
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dsmark_qdisc_data {int q; } ;
struct TYPE_2__ {scalar_t__ qlen; } ;
struct Qdisc {TYPE_1__ q; } ;


 int pr_debug (char*,struct Qdisc*,struct dsmark_qdisc_data*) ;
 struct dsmark_qdisc_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_reset (int ) ;

__attribute__((used)) static void dsmark_reset(struct Qdisc *sch)
{
 struct dsmark_qdisc_data *p = qdisc_priv(sch);

 pr_debug("dsmark_reset(sch %p,[qdisc %p])\n", sch, p);
 qdisc_reset(p->q);
 sch->q.qlen = 0;
}

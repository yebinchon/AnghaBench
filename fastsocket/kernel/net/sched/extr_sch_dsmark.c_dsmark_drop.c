
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dsmark_qdisc_data {TYPE_3__* q; } ;
struct TYPE_5__ {int qlen; } ;
struct Qdisc {TYPE_2__ q; } ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_4__ {unsigned int (* drop ) (TYPE_3__*) ;} ;


 int pr_debug (char*,struct Qdisc*,struct dsmark_qdisc_data*) ;
 struct dsmark_qdisc_data* qdisc_priv (struct Qdisc*) ;
 unsigned int stub1 (TYPE_3__*) ;

__attribute__((used)) static unsigned int dsmark_drop(struct Qdisc *sch)
{
 struct dsmark_qdisc_data *p = qdisc_priv(sch);
 unsigned int len;

 pr_debug("dsmark_reset(sch %p,[qdisc %p])\n", sch, p);

 if (p->q->ops->drop == ((void*)0))
  return 0;

 len = p->q->ops->drop(p->q);
 if (len)
  sch->q.qlen--;

 return len;
}

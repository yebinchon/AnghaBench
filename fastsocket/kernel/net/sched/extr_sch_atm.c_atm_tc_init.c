
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nlattr {int dummy; } ;
struct TYPE_2__ {int ref; int * next; int classid; int * sock; int * vcc; int * filter_list; int * q; } ;
struct atm_qdisc_data {int task; TYPE_1__ link; TYPE_1__* flows; } ;
struct Qdisc {int handle; int dev_queue; } ;


 int noop_qdisc ;
 int pfifo_qdisc_ops ;
 int pr_debug (char*,...) ;
 int * qdisc_create_dflt (int ,int ,int *,int ) ;
 int qdisc_dev (struct Qdisc*) ;
 struct atm_qdisc_data* qdisc_priv (struct Qdisc*) ;
 int sch_atm_dequeue ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static int atm_tc_init(struct Qdisc *sch, struct nlattr *opt)
{
 struct atm_qdisc_data *p = qdisc_priv(sch);

 pr_debug("atm_tc_init(sch %p,[qdisc %p],opt %p)\n", sch, p, opt);
 p->flows = &p->link;
 p->link.q = qdisc_create_dflt(qdisc_dev(sch), sch->dev_queue,
          &pfifo_qdisc_ops, sch->handle);
 if (!p->link.q)
  p->link.q = &noop_qdisc;
 pr_debug("atm_tc_init: link (%p) qdisc %p\n", &p->link, p->link.q);
 p->link.filter_list = ((void*)0);
 p->link.vcc = ((void*)0);
 p->link.sock = ((void*)0);
 p->link.classid = sch->handle;
 p->link.ref = 1;
 p->link.next = ((void*)0);
 tasklet_init(&p->task, sch_atm_dequeue, (unsigned long)sch);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hfsc_class {TYPE_2__* qdisc; } ;
struct Qdisc {int dummy; } ;
struct TYPE_4__ {unsigned int qlen; } ;
struct TYPE_5__ {TYPE_1__ q; } ;


 int qdisc_reset (TYPE_2__*) ;
 int qdisc_tree_decrease_qlen (TYPE_2__*,unsigned int) ;

__attribute__((used)) static void
hfsc_purge_queue(struct Qdisc *sch, struct hfsc_class *cl)
{
 unsigned int len = cl->qdisc->q.qlen;

 qdisc_reset(cl->qdisc);
 qdisc_tree_decrease_qlen(cl->qdisc, len);
}

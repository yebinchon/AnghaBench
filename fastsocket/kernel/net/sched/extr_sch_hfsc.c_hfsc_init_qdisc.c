
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tc_hfsc_qopt {int defcls; } ;
struct nlattr {int dummy; } ;
struct TYPE_4__ {int classid; } ;
struct TYPE_3__ {int refcnt; TYPE_2__ cl_common; void* cf_tree; void* vt_tree; int children; int * qdisc; struct hfsc_sched* sched; } ;
struct hfsc_sched {int watchdog; int clhash; TYPE_1__ root; int droplist; void* eligible; int defcls; } ;
struct Qdisc {int handle; int dev_queue; } ;


 int EINVAL ;
 int INIT_LIST_HEAD (int *) ;
 void* RB_ROOT ;
 struct tc_hfsc_qopt* nla_data (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 int noop_qdisc ;
 int pfifo_qdisc_ops ;
 int qdisc_class_hash_grow (struct Qdisc*,int *) ;
 int qdisc_class_hash_init (int *) ;
 int qdisc_class_hash_insert (int *,TYPE_2__*) ;
 int * qdisc_create_dflt (int ,int ,int *,int ) ;
 int qdisc_dev (struct Qdisc*) ;
 struct hfsc_sched* qdisc_priv (struct Qdisc*) ;
 int qdisc_watchdog_init (int *,struct Qdisc*) ;

__attribute__((used)) static int
hfsc_init_qdisc(struct Qdisc *sch, struct nlattr *opt)
{
 struct hfsc_sched *q = qdisc_priv(sch);
 struct tc_hfsc_qopt *qopt;
 int err;

 if (opt == ((void*)0) || nla_len(opt) < sizeof(*qopt))
  return -EINVAL;
 qopt = nla_data(opt);

 q->defcls = qopt->defcls;
 err = qdisc_class_hash_init(&q->clhash);
 if (err < 0)
  return err;
 q->eligible = RB_ROOT;
 INIT_LIST_HEAD(&q->droplist);

 q->root.cl_common.classid = sch->handle;
 q->root.refcnt = 1;
 q->root.sched = q;
 q->root.qdisc = qdisc_create_dflt(qdisc_dev(sch), sch->dev_queue,
       &pfifo_qdisc_ops,
       sch->handle);
 if (q->root.qdisc == ((void*)0))
  q->root.qdisc = &noop_qdisc;
 INIT_LIST_HEAD(&q->root.children);
 q->root.vt_tree = RB_ROOT;
 q->root.cf_tree = RB_ROOT;

 qdisc_class_hash_insert(&q->clhash, &q->root.cl_common);
 qdisc_class_hash_grow(sch, &q->clhash);

 qdisc_watchdog_init(&q->watchdog, sch);

 return 0;
}

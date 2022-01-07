
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Qdisc_ops {struct Qdisc_ops* next; struct Qdisc_class_ops* cl_ops; int * dequeue; int * peek; int * enqueue; int id; } ;
struct Qdisc_class_ops {scalar_t__ unbind_tcf; scalar_t__ bind_tcf; scalar_t__ tcf_chain; scalar_t__ put; scalar_t__ get; } ;
struct TYPE_2__ {int * dequeue; int * peek; int * enqueue; } ;


 int EEXIST ;
 int EINVAL ;
 TYPE_1__ noop_qdisc_ops ;
 struct Qdisc_ops* qdisc_base ;
 int qdisc_mod_lock ;
 int strcmp (int ,int ) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

int register_qdisc(struct Qdisc_ops *qops)
{
 struct Qdisc_ops *q, **qp;
 int rc = -EEXIST;

 write_lock(&qdisc_mod_lock);
 for (qp = &qdisc_base; (q = *qp) != ((void*)0); qp = &q->next)
  if (!strcmp(qops->id, q->id))
   goto out;

 if (qops->enqueue == ((void*)0))
  qops->enqueue = noop_qdisc_ops.enqueue;
 if (qops->peek == ((void*)0)) {
  if (qops->dequeue == ((void*)0))
   qops->peek = noop_qdisc_ops.peek;
  else
   goto out_einval;
 }
 if (qops->dequeue == ((void*)0))
  qops->dequeue = noop_qdisc_ops.dequeue;

 if (qops->cl_ops) {
  const struct Qdisc_class_ops *cops = qops->cl_ops;

  if (!(cops->get && cops->put))
   goto out_einval;

  if (cops->tcf_chain && !(cops->bind_tcf && cops->unbind_tcf))
   goto out_einval;
 }

 qops->next = ((void*)0);
 *qp = qops;
 rc = 0;
out:
 write_unlock(&qdisc_mod_lock);
 return rc;

out_einval:
 rc = -EINVAL;
 goto out;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Qdisc_ops {struct Qdisc_ops* next; } ;


 int ENOENT ;
 struct Qdisc_ops* qdisc_base ;
 int qdisc_mod_lock ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

int unregister_qdisc(struct Qdisc_ops *qops)
{
 struct Qdisc_ops *q, **qp;
 int err = -ENOENT;

 write_lock(&qdisc_mod_lock);
 for (qp = &qdisc_base; (q=*qp)!=((void*)0); qp = &q->next)
  if (q == qops)
   break;
 if (q) {
  *qp = q->next;
  q->next = ((void*)0);
  err = 0;
 }
 write_unlock(&qdisc_mod_lock);
 return err;
}

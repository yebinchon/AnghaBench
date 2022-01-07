
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Qdisc_ops {int owner; int (* destroy ) (struct Qdisc*) ;int (* reset ) (struct Qdisc*) ;} ;
struct Qdisc {int flags; int padded; int gso_skb; int rate_est; int bstats; int stab; int refcnt; struct Qdisc_ops* ops; } ;


 int TCQ_F_BUILTIN ;
 int atomic_dec_and_test (int *) ;
 int dev_put (int ) ;
 int gen_kill_estimator (int *,int *) ;
 int kfree (char*) ;
 int kfree_skb (int ) ;
 int module_put (int ) ;
 int qdisc_dev (struct Qdisc*) ;
 int qdisc_list_del (struct Qdisc*) ;
 int qdisc_put_stab (int ) ;
 int stub1 (struct Qdisc*) ;
 int stub2 (struct Qdisc*) ;

void qdisc_destroy(struct Qdisc *qdisc)
{
 const struct Qdisc_ops *ops = qdisc->ops;

 if (qdisc->flags & TCQ_F_BUILTIN ||
     !atomic_dec_and_test(&qdisc->refcnt))
  return;






 gen_kill_estimator(&qdisc->bstats, &qdisc->rate_est);
 if (ops->reset)
  ops->reset(qdisc);
 if (ops->destroy)
  ops->destroy(qdisc);

 module_put(ops->owner);
 dev_put(qdisc_dev(qdisc));

 kfree_skb(qdisc->gso_skb);
 kfree((char *) qdisc - qdisc->padded);
}

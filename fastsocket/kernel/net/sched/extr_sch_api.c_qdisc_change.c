
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qdisc_size_table {int dummy; } ;
struct nlattr {int dummy; } ;
struct Qdisc {int flags; int rate_est; int bstats; struct qdisc_size_table* stab; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* change ) (struct Qdisc*,struct nlattr*) ;} ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct qdisc_size_table*) ;
 int PTR_ERR (struct qdisc_size_table*) ;
 size_t TCA_OPTIONS ;
 size_t TCA_RATE ;
 size_t TCA_STAB ;
 int TCQ_F_MQROOT ;
 int gen_replace_estimator (int *,int *,int ,struct nlattr*) ;
 struct qdisc_size_table* qdisc_get_stab (struct nlattr*) ;
 int qdisc_put_stab (struct qdisc_size_table*) ;
 int qdisc_root_sleeping_lock (struct Qdisc*) ;
 int stub1 (struct Qdisc*,struct nlattr*) ;

__attribute__((used)) static int qdisc_change(struct Qdisc *sch, struct nlattr **tca)
{
 struct qdisc_size_table *stab = ((void*)0);
 int err = 0;

 if (tca[TCA_OPTIONS]) {
  if (sch->ops->change == ((void*)0))
   return -EINVAL;
  err = sch->ops->change(sch, tca[TCA_OPTIONS]);
  if (err)
   return err;
 }

 if (tca[TCA_STAB]) {
  stab = qdisc_get_stab(tca[TCA_STAB]);
  if (IS_ERR(stab))
   return PTR_ERR(stab);
 }

 qdisc_put_stab(sch->stab);
 sch->stab = stab;

 if (tca[TCA_RATE]) {


  if (sch->flags & TCQ_F_MQROOT)
   goto out;
  gen_replace_estimator(&sch->bstats, &sch->rate_est,
         qdisc_root_sleeping_lock(sch),
         tca[TCA_RATE]);
 }
out:
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int q; } ;
struct TYPE_4__ {TYPE_1__ leaf; } ;
struct htb_class {int filter_list; int ceil; int rate; int rate_est; int bstats; TYPE_2__ un; int level; } ;
struct Qdisc {int dummy; } ;


 int WARN_ON (int) ;
 int gen_kill_estimator (int *,int *) ;
 int kfree (struct htb_class*) ;
 int qdisc_destroy (int ) ;
 int qdisc_put_rtab (int ) ;
 int tcf_destroy_chain (int *) ;

__attribute__((used)) static void htb_destroy_class(struct Qdisc *sch, struct htb_class *cl)
{
 if (!cl->level) {
  WARN_ON(!cl->un.leaf.q);
  qdisc_destroy(cl->un.leaf.q);
 }
 gen_kill_estimator(&cl->bstats, &cl->rate_est);
 qdisc_put_rtab(cl->rate);
 qdisc_put_rtab(cl->ceil);

 tcf_destroy_chain(&cl->filter_list);
 kfree(cl);
}

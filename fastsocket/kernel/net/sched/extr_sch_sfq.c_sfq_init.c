
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned long data; int function; } ;
struct sfq_sched_data {int* ht; int limit; int tail; int perturbation; scalar_t__ perturb_period; int quantum; scalar_t__ max_depth; TYPE_1__* dep; int * qs; TYPE_2__ perturb_timer; } ;
struct nlattr {int dummy; } ;
struct Qdisc {int dummy; } ;
struct TYPE_3__ {int next; int prev; } ;


 int SFQ_DEPTH ;
 int SFQ_HASH_DIVISOR ;
 int init_timer_deferrable (TYPE_2__*) ;
 int net_random () ;
 int psched_mtu (int ) ;
 int qdisc_dev (struct Qdisc*) ;
 struct sfq_sched_data* qdisc_priv (struct Qdisc*) ;
 int sfq_change (struct Qdisc*,struct nlattr*) ;
 int sfq_link (struct sfq_sched_data*,int) ;
 int sfq_perturbation ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static int sfq_init(struct Qdisc *sch, struct nlattr *opt)
{
 struct sfq_sched_data *q = qdisc_priv(sch);
 int i;

 q->perturb_timer.function = sfq_perturbation;
 q->perturb_timer.data = (unsigned long)sch;
 init_timer_deferrable(&q->perturb_timer);

 for (i = 0; i < SFQ_HASH_DIVISOR; i++)
  q->ht[i] = SFQ_DEPTH;

 for (i = 0; i < SFQ_DEPTH; i++) {
  skb_queue_head_init(&q->qs[i]);
  q->dep[i + SFQ_DEPTH].next = i + SFQ_DEPTH;
  q->dep[i + SFQ_DEPTH].prev = i + SFQ_DEPTH;
 }

 q->limit = SFQ_DEPTH - 1;
 q->max_depth = 0;
 q->tail = SFQ_DEPTH;
 if (opt == ((void*)0)) {
  q->quantum = psched_mtu(qdisc_dev(sch));
  q->perturb_period = 0;
  q->perturbation = net_random();
 } else {
  int err = sfq_change(sch, opt);
  if (err)
   return err;
 }

 for (i = 0; i < SFQ_DEPTH; i++)
  sfq_link(q, i);
 return 0;
}

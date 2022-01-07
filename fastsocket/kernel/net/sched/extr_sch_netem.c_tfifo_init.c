
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tc_fifo_qopt {int limit; } ;
struct nlattr {int dummy; } ;
struct fifo_sched_data {int oldest; int limit; } ;
struct Qdisc {int dummy; } ;
struct TYPE_2__ {int tx_queue_len; } ;


 int EINVAL ;
 int PSCHED_PASTPERFECT ;
 int max_t (int ,int ,int) ;
 struct tc_fifo_qopt* nla_data (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 TYPE_1__* qdisc_dev (struct Qdisc*) ;
 struct fifo_sched_data* qdisc_priv (struct Qdisc*) ;
 int u32 ;

__attribute__((used)) static int tfifo_init(struct Qdisc *sch, struct nlattr *opt)
{
 struct fifo_sched_data *q = qdisc_priv(sch);

 if (opt) {
  struct tc_fifo_qopt *ctl = nla_data(opt);
  if (nla_len(opt) < sizeof(*ctl))
   return -EINVAL;

  q->limit = ctl->limit;
 } else
  q->limit = max_t(u32, qdisc_dev(sch)->tx_queue_len, 1);

 q->oldest = PSCHED_PASTPERFECT;
 return 0;
}

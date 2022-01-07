
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rate; int cell_log; } ;
struct tc_tbf_qopt {scalar_t__ buffer; scalar_t__ mtu; scalar_t__ limit; TYPE_2__ peakrate; TYPE_2__ rate; } ;
struct tbf_sched_data {scalar_t__ limit; scalar_t__ mtu; int max_size; scalar_t__ buffer; scalar_t__ tokens; scalar_t__ ptokens; int P_tab; int R_tab; struct Qdisc* qdisc; } ;
struct qdisc_rate_table {scalar_t__* data; } ;
struct nlattr {int dummy; } ;
struct TYPE_3__ {int qlen; } ;
struct Qdisc {TYPE_1__ q; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct Qdisc*) ;
 int PTR_ERR (struct Qdisc*) ;
 size_t TCA_TBF_PARMS ;
 int TCA_TBF_PTAB ;
 size_t TCA_TBF_RTAB ;
 int bfifo_qdisc_ops ;
 struct Qdisc* fifo_create_dflt (struct Qdisc*,int *,scalar_t__) ;
 struct tc_tbf_qopt* nla_data (struct nlattr*) ;
 int nla_parse_nested (struct nlattr**,int,struct nlattr*,int ) ;
 int qdisc_destroy (struct Qdisc*) ;
 struct qdisc_rate_table* qdisc_get_rtab (TYPE_2__*,struct nlattr*) ;
 struct tbf_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_put_rtab (struct qdisc_rate_table*) ;
 int qdisc_tree_decrease_qlen (struct Qdisc*,int ) ;
 int sch_tree_lock (struct Qdisc*) ;
 int sch_tree_unlock (struct Qdisc*) ;
 int swap (int ,struct qdisc_rate_table*) ;
 int tbf_policy ;

__attribute__((used)) static int tbf_change(struct Qdisc* sch, struct nlattr *opt)
{
 int err;
 struct tbf_sched_data *q = qdisc_priv(sch);
 struct nlattr *tb[TCA_TBF_PTAB + 1];
 struct tc_tbf_qopt *qopt;
 struct qdisc_rate_table *rtab = ((void*)0);
 struct qdisc_rate_table *ptab = ((void*)0);
 struct Qdisc *child = ((void*)0);
 int max_size,n;

 err = nla_parse_nested(tb, TCA_TBF_PTAB, opt, tbf_policy);
 if (err < 0)
  return err;

 err = -EINVAL;
 if (tb[TCA_TBF_PARMS] == ((void*)0))
  goto done;

 qopt = nla_data(tb[TCA_TBF_PARMS]);
 rtab = qdisc_get_rtab(&qopt->rate, tb[TCA_TBF_RTAB]);
 if (rtab == ((void*)0))
  goto done;

 if (qopt->peakrate.rate) {
  if (qopt->peakrate.rate > qopt->rate.rate)
   ptab = qdisc_get_rtab(&qopt->peakrate, tb[TCA_TBF_PTAB]);
  if (ptab == ((void*)0))
   goto done;
 }

 for (n = 0; n < 256; n++)
  if (rtab->data[n] > qopt->buffer) break;
 max_size = (n << qopt->rate.cell_log)-1;
 if (ptab) {
  int size;

  for (n = 0; n < 256; n++)
   if (ptab->data[n] > qopt->mtu) break;
  size = (n << qopt->peakrate.cell_log)-1;
  if (size < max_size) max_size = size;
 }
 if (max_size < 0)
  goto done;

 if (qopt->limit > 0) {
  child = fifo_create_dflt(sch, &bfifo_qdisc_ops, qopt->limit);
  if (IS_ERR(child)) {
   err = PTR_ERR(child);
   goto done;
  }
 }

 sch_tree_lock(sch);
 if (child) {
  qdisc_tree_decrease_qlen(q->qdisc, q->qdisc->q.qlen);
  qdisc_destroy(q->qdisc);
  q->qdisc = child;
 }
 q->limit = qopt->limit;
 q->mtu = qopt->mtu;
 q->max_size = max_size;
 q->buffer = qopt->buffer;
 q->tokens = q->buffer;
 q->ptokens = q->mtu;

 swap(q->R_tab, rtab);
 swap(q->P_tab, ptab);

 sch_tree_unlock(sch);
 err = 0;
done:
 if (rtab)
  qdisc_put_rtab(rtab);
 if (ptab)
  qdisc_put_rtab(ptab);
 return err;
}

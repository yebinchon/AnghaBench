
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tc_netem_reorder {int correlation; int probability; int dup_corr; int loss_corr; int delay_corr; int duplicate; int gap; int loss; int limit; int jitter; int latency; } ;
struct tc_netem_qopt {int correlation; int probability; int dup_corr; int loss_corr; int delay_corr; int duplicate; int gap; int loss; int limit; int jitter; int latency; } ;
struct tc_netem_corrupt {int correlation; int probability; int dup_corr; int loss_corr; int delay_corr; int duplicate; int gap; int loss; int limit; int jitter; int latency; } ;
struct tc_netem_corr {int correlation; int probability; int dup_corr; int loss_corr; int delay_corr; int duplicate; int gap; int loss; int limit; int jitter; int latency; } ;
struct sk_buff {int len; } ;
struct nlattr {int nla_len; } ;
struct TYPE_10__ {int rho; } ;
struct TYPE_9__ {int rho; } ;
struct TYPE_8__ {int rho; } ;
struct TYPE_7__ {int rho; } ;
struct TYPE_6__ {int rho; } ;
struct netem_sched_data {TYPE_5__ corrupt_cor; int corrupt; TYPE_4__ reorder_cor; int reorder; TYPE_3__ dup_cor; TYPE_2__ loss_cor; TYPE_1__ delay_cor; int duplicate; int gap; int loss; int limit; int jitter; int latency; } ;
struct Qdisc {int dummy; } ;
typedef int reorder ;
typedef int qopt ;
typedef int corrupt ;
typedef int cor ;


 int NLA_PUT (struct sk_buff*,int ,int,struct tc_netem_reorder*) ;
 int TCA_NETEM_CORR ;
 int TCA_NETEM_CORRUPT ;
 int TCA_NETEM_REORDER ;
 int TCA_OPTIONS ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 struct netem_sched_data* qdisc_priv (struct Qdisc*) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;

__attribute__((used)) static int netem_dump(struct Qdisc *sch, struct sk_buff *skb)
{
 const struct netem_sched_data *q = qdisc_priv(sch);
 unsigned char *b = skb_tail_pointer(skb);
 struct nlattr *nla = (struct nlattr *) b;
 struct tc_netem_qopt qopt;
 struct tc_netem_corr cor;
 struct tc_netem_reorder reorder;
 struct tc_netem_corrupt corrupt;

 qopt.latency = q->latency;
 qopt.jitter = q->jitter;
 qopt.limit = q->limit;
 qopt.loss = q->loss;
 qopt.gap = q->gap;
 qopt.duplicate = q->duplicate;
 NLA_PUT(skb, TCA_OPTIONS, sizeof(qopt), &qopt);

 cor.delay_corr = q->delay_cor.rho;
 cor.loss_corr = q->loss_cor.rho;
 cor.dup_corr = q->dup_cor.rho;
 NLA_PUT(skb, TCA_NETEM_CORR, sizeof(cor), &cor);

 reorder.probability = q->reorder;
 reorder.correlation = q->reorder_cor.rho;
 NLA_PUT(skb, TCA_NETEM_REORDER, sizeof(reorder), &reorder);

 corrupt.probability = q->corrupt;
 corrupt.correlation = q->corrupt_cor.rho;
 NLA_PUT(skb, TCA_NETEM_CORRUPT, sizeof(corrupt), &corrupt);

 nla->nla_len = skb_tail_pointer(skb) - b;

 return skb->len;

nla_put_failure:
 nlmsg_trim(skb, b);
 return -1;
}

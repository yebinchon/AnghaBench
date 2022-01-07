
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct tcmsg {int tcm_info; int tcm_handle; int tcm_parent; int tcm_ifindex; scalar_t__ tcm__pad2; scalar_t__ tcm__pad1; int tcm_family; } ;
struct sk_buff {int len; } ;
struct nlmsghdr {int nlmsg_len; } ;
struct gnet_dump {int dummy; } ;
struct TYPE_8__ {int qlen; } ;
struct TYPE_5__ {int qlen; } ;
struct Qdisc {TYPE_4__ qstats; int rate_est; int bstats; TYPE_2__* ops; scalar_t__ stab; TYPE_1__ q; int refcnt; int handle; } ;
struct TYPE_7__ {int ifindex; } ;
struct TYPE_6__ {scalar_t__ (* dump ) (struct Qdisc*,struct sk_buff*) ;scalar_t__ (* dump_stats ) (struct Qdisc*,struct gnet_dump*) ;int id; } ;


 int AF_UNSPEC ;
 int NLA_PUT_STRING (struct sk_buff*,int ,int ) ;
 struct tcmsg* NLMSG_DATA (struct nlmsghdr*) ;
 struct nlmsghdr* NLMSG_NEW (struct sk_buff*,int ,int ,int,int,int ) ;
 int TCA_KIND ;
 int TCA_STATS ;
 int TCA_STATS2 ;
 int TCA_XSTATS ;
 int atomic_read (int *) ;
 scalar_t__ gnet_stats_copy_basic (struct gnet_dump*,int *) ;
 scalar_t__ gnet_stats_copy_queue (struct gnet_dump*,TYPE_4__*) ;
 scalar_t__ gnet_stats_copy_rate_est (struct gnet_dump*,int *) ;
 scalar_t__ gnet_stats_finish_copy (struct gnet_dump*) ;
 scalar_t__ gnet_stats_start_copy_compat (struct sk_buff*,int ,int ,int ,int ,struct gnet_dump*) ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 TYPE_3__* qdisc_dev (struct Qdisc*) ;
 scalar_t__ qdisc_dump_stab (struct sk_buff*,scalar_t__) ;
 int qdisc_root_sleeping_lock (struct Qdisc*) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;
 scalar_t__ stub1 (struct Qdisc*,struct sk_buff*) ;
 scalar_t__ stub2 (struct Qdisc*,struct gnet_dump*) ;

__attribute__((used)) static int tc_fill_qdisc(struct sk_buff *skb, struct Qdisc *q, u32 clid,
    u32 pid, u32 seq, u16 flags, int event)
{
 struct tcmsg *tcm;
 struct nlmsghdr *nlh;
 unsigned char *b = skb_tail_pointer(skb);
 struct gnet_dump d;

 nlh = NLMSG_NEW(skb, pid, seq, event, sizeof(*tcm), flags);
 tcm = NLMSG_DATA(nlh);
 tcm->tcm_family = AF_UNSPEC;
 tcm->tcm__pad1 = 0;
 tcm->tcm__pad2 = 0;
 tcm->tcm_ifindex = qdisc_dev(q)->ifindex;
 tcm->tcm_parent = clid;
 tcm->tcm_handle = q->handle;
 tcm->tcm_info = atomic_read(&q->refcnt);
 NLA_PUT_STRING(skb, TCA_KIND, q->ops->id);
 if (q->ops->dump && q->ops->dump(q, skb) < 0)
  goto nla_put_failure;
 q->qstats.qlen = q->q.qlen;

 if (q->stab && qdisc_dump_stab(skb, q->stab) < 0)
  goto nla_put_failure;

 if (gnet_stats_start_copy_compat(skb, TCA_STATS2, TCA_STATS, TCA_XSTATS,
      qdisc_root_sleeping_lock(q), &d) < 0)
  goto nla_put_failure;

 if (q->ops->dump_stats && q->ops->dump_stats(q, &d) < 0)
  goto nla_put_failure;

 if (gnet_stats_copy_basic(&d, &q->bstats) < 0 ||
     gnet_stats_copy_rate_est(&d, &q->rate_est) < 0 ||
     gnet_stats_copy_queue(&d, &q->qstats) < 0)
  goto nla_put_failure;

 if (gnet_stats_finish_copy(&d) < 0)
  goto nla_put_failure;

 nlh->nlmsg_len = skb_tail_pointer(skb) - b;
 return skb->len;

nlmsg_failure:
nla_put_failure:
 nlmsg_trim(skb, b);
 return -1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_htb_glob {scalar_t__ debug; int defcls; int rate2quantum; int version; int direct_pkts; } ;
struct sk_buff {int len; } ;
struct nlattr {int dummy; } ;
struct htb_sched {int defcls; int rate2quantum; int direct_pkts; } ;
struct Qdisc {int dummy; } ;
typedef int spinlock_t ;
typedef int gopt ;


 int HTB_VER ;
 int NLA_PUT (struct sk_buff*,int ,int,struct tc_htb_glob*) ;
 int TCA_HTB_INIT ;
 int TCA_OPTIONS ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;
 struct htb_sched* qdisc_priv (struct Qdisc*) ;
 int * qdisc_root_sleeping_lock (struct Qdisc*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int htb_dump(struct Qdisc *sch, struct sk_buff *skb)
{
 spinlock_t *root_lock = qdisc_root_sleeping_lock(sch);
 struct htb_sched *q = qdisc_priv(sch);
 struct nlattr *nest;
 struct tc_htb_glob gopt;

 spin_lock_bh(root_lock);

 gopt.direct_pkts = q->direct_pkts;
 gopt.version = HTB_VER;
 gopt.rate2quantum = q->rate2quantum;
 gopt.defcls = q->defcls;
 gopt.debug = 0;

 nest = nla_nest_start(skb, TCA_OPTIONS);
 if (nest == ((void*)0))
  goto nla_put_failure;
 NLA_PUT(skb, TCA_HTB_INIT, sizeof(gopt), &gopt);
 nla_nest_end(skb, nest);

 spin_unlock_bh(root_lock);
 return skb->len;

nla_put_failure:
 spin_unlock_bh(root_lock);
 nla_nest_cancel(skb, nest);
 return -1;
}

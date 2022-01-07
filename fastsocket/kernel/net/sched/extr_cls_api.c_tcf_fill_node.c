
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct tcmsg {unsigned long tcm_handle; int tcm_info; int tcm_parent; int tcm_ifindex; scalar_t__ tcm__pad2; scalar_t__ tcm__pad1; int tcm_family; } ;
struct tcf_proto {TYPE_1__* ops; int protocol; int prio; int classid; int q; } ;
struct sk_buff {int len; } ;
struct nlmsghdr {int nlmsg_len; } ;
struct TYPE_4__ {int ifindex; } ;
struct TYPE_3__ {scalar_t__ (* dump ) (struct tcf_proto*,unsigned long,struct sk_buff*,struct tcmsg*) ;int kind; } ;


 int AF_UNSPEC ;
 int NLA_PUT_STRING (struct sk_buff*,int ,int ) ;
 struct tcmsg* NLMSG_DATA (struct nlmsghdr*) ;
 struct nlmsghdr* NLMSG_NEW (struct sk_buff*,int ,int ,int,int,int ) ;
 int RTM_DELTFILTER ;
 int TCA_KIND ;
 int TC_H_MAKE (int ,int ) ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 TYPE_2__* qdisc_dev (int ) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;
 scalar_t__ stub1 (struct tcf_proto*,unsigned long,struct sk_buff*,struct tcmsg*) ;

__attribute__((used)) static int tcf_fill_node(struct sk_buff *skb, struct tcf_proto *tp,
    unsigned long fh, u32 pid, u32 seq, u16 flags, int event)
{
 struct tcmsg *tcm;
 struct nlmsghdr *nlh;
 unsigned char *b = skb_tail_pointer(skb);

 nlh = NLMSG_NEW(skb, pid, seq, event, sizeof(*tcm), flags);
 tcm = NLMSG_DATA(nlh);
 tcm->tcm_family = AF_UNSPEC;
 tcm->tcm__pad1 = 0;
 tcm->tcm__pad2 = 0;
 tcm->tcm_ifindex = qdisc_dev(tp->q)->ifindex;
 tcm->tcm_parent = tp->classid;
 tcm->tcm_info = TC_H_MAKE(tp->prio, tp->protocol);
 NLA_PUT_STRING(skb, TCA_KIND, tp->ops->kind);
 tcm->tcm_handle = fh;
 if (RTM_DELTFILTER != event) {
  tcm->tcm_handle = 0;
  if (tp->ops->dump && tp->ops->dump(tp, fh, skb, tcm) < 0)
   goto nla_put_failure;
 }
 nlh->nlmsg_len = skb_tail_pointer(skb) - b;
 return skb->len;

nlmsg_failure:
nla_put_failure:
 nlmsg_trim(skb, b);
 return -1;
}

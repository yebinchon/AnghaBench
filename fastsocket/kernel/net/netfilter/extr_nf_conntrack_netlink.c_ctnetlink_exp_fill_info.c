
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sk_buff {int len; } ;
struct nlmsghdr {int dummy; } ;
struct nfgenmsg {scalar_t__ res_id; int version; int nfgen_family; } ;
struct TYPE_3__ {int l3num; } ;
struct TYPE_4__ {TYPE_1__ src; } ;
struct nf_conntrack_expect {TYPE_2__ tuple; } ;


 int NFNETLINK_V0 ;
 int NFNL_SUBSYS_CTNETLINK_EXP ;
 unsigned int NLM_F_MULTI ;
 scalar_t__ ctnetlink_exp_dump_expect (struct sk_buff*,struct nf_conntrack_expect const*) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct nfgenmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,scalar_t__,scalar_t__,int,int,unsigned int) ;

__attribute__((used)) static int
ctnetlink_exp_fill_info(struct sk_buff *skb, u32 pid, u32 seq,
   int event, const struct nf_conntrack_expect *exp)
{
 struct nlmsghdr *nlh;
 struct nfgenmsg *nfmsg;
 unsigned int flags = pid ? NLM_F_MULTI : 0;

 event |= NFNL_SUBSYS_CTNETLINK_EXP << 8;
 nlh = nlmsg_put(skb, pid, seq, event, sizeof(*nfmsg), flags);
 if (nlh == ((void*)0))
  goto nlmsg_failure;

 nfmsg = nlmsg_data(nlh);
 nfmsg->nfgen_family = exp->tuple.src.l3num;
 nfmsg->version = NFNETLINK_V0;
 nfmsg->res_id = 0;

 if (ctnetlink_exp_dump_expect(skb, exp) < 0)
  goto nla_put_failure;

 nlmsg_end(skb, nlh);
 return skb->len;

nlmsg_failure:
nla_put_failure:
 nlmsg_cancel(skb, nlh);
 return -1;
}

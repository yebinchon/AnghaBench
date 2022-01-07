
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct rtmsg {int rtm_dst_len; int rtm_src_len; scalar_t__ rtm_flags; int rtm_protocol; int rtm_scope; int rtm_type; int rtm_table; scalar_t__ rtm_tos; int rtm_family; } ;
struct nlmsghdr {int dummy; } ;
struct mr_table {int id; } ;
struct mfc_cache {int mfc_mcastgrp; int mfc_origin; } ;


 int EMSGSIZE ;
 int NLA_PUT_BE32 (struct sk_buff*,int ,int ) ;
 int NLA_PUT_U32 (struct sk_buff*,int ,int ) ;
 int NLM_F_MULTI ;
 int RTA_DST ;
 int RTA_SRC ;
 int RTA_TABLE ;
 int RTM_NEWROUTE ;
 int RTNL_FAMILY_IPMR ;
 int RTN_MULTICAST ;
 int RTPROT_UNSPEC ;
 int RT_SCOPE_UNIVERSE ;
 scalar_t__ __ipmr_fill_mroute (struct mr_table*,struct sk_buff*,struct mfc_cache*,struct rtmsg*) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct rtmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int,int ) ;

__attribute__((used)) static int ipmr_fill_mroute(struct mr_table *mrt, struct sk_buff *skb,
       u32 pid, u32 seq, struct mfc_cache *c)
{
 struct nlmsghdr *nlh;
 struct rtmsg *rtm;

 nlh = nlmsg_put(skb, pid, seq, RTM_NEWROUTE, sizeof(*rtm), NLM_F_MULTI);
 if (nlh == ((void*)0))
  return -EMSGSIZE;

 rtm = nlmsg_data(nlh);
 rtm->rtm_family = RTNL_FAMILY_IPMR;
 rtm->rtm_dst_len = 32;
 rtm->rtm_src_len = 32;
 rtm->rtm_tos = 0;
 rtm->rtm_table = mrt->id;
 NLA_PUT_U32(skb, RTA_TABLE, mrt->id);
 rtm->rtm_type = RTN_MULTICAST;
 rtm->rtm_scope = RT_SCOPE_UNIVERSE;
 rtm->rtm_protocol = RTPROT_UNSPEC;
 rtm->rtm_flags = 0;

 NLA_PUT_BE32(skb, RTA_SRC, c->mfc_origin);
 NLA_PUT_BE32(skb, RTA_DST, c->mfc_mcastgrp);

 if (__ipmr_fill_mroute(mrt, skb, c, rtm) < 0)
  goto nla_put_failure;

 return nlmsg_end(skb, nlh);

nla_put_failure:
 nlmsg_cancel(skb, nlh);
 return -EMSGSIZE;
}

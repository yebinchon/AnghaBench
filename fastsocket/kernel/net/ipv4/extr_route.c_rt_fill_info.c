
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct rtmsg {int rtm_dst_len; int rtm_src_len; int rtm_flags; int rtm_protocol; int rtm_scope; int rtm_type; scalar_t__ rtm_table; int rtm_tos; int rtm_family; } ;
struct TYPE_10__ {int error; long expires; int metrics; scalar_t__ tclassid; TYPE_1__* dev; } ;
struct TYPE_9__ {TYPE_5__ dst; } ;
struct TYPE_8__ {scalar_t__ fl4_src; scalar_t__ iif; int fl4_tos; } ;
struct rtable {int rt_flags; scalar_t__ rt_dst; scalar_t__ rt_spec_dst; scalar_t__ rt_src; scalar_t__ rt_gateway; TYPE_4__ u; TYPE_3__ fl; TYPE_2__* peer; int rt_type; } ;
struct nlmsghdr {int dummy; } ;
struct net {int dummy; } ;
typedef scalar_t__ __be32 ;
struct TYPE_7__ {int ip_id_count; int tcp_ts_stamp; int tcp_ts; } ;
struct TYPE_6__ {scalar_t__ ifindex; } ;


 int AF_INET ;
 int EMSGSIZE ;
 scalar_t__ IPV4_DEVCONF_ALL (struct net*,int ) ;
 int MC_FORWARDING ;
 int NLA_PUT_BE32 (struct sk_buff*,int ,scalar_t__) ;
 int NLA_PUT_U32 (struct sk_buff*,int ,scalar_t__) ;
 int RTA_DST ;
 int RTA_FLOW ;
 int RTA_GATEWAY ;
 int RTA_IIF ;
 int RTA_OIF ;
 int RTA_PREFSRC ;
 int RTA_SRC ;
 int RTA_TABLE ;
 int RTCF_NOTIFY ;
 int RTM_F_CLONED ;
 int RTM_F_NOTIFY ;
 int RTPROT_UNSPEC ;
 int RT_SCOPE_UNIVERSE ;
 scalar_t__ RT_TABLE_MAIN ;
 int get_seconds () ;
 int ipmr_get_route (struct net*,struct sk_buff*,struct rtmsg*,int) ;
 int ipv4_is_local_multicast (scalar_t__) ;
 scalar_t__ ipv4_is_multicast (scalar_t__) ;
 long jiffies ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct rtmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int,int,int,int,unsigned int) ;
 scalar_t__ rtnetlink_put_metrics (struct sk_buff*,int ) ;
 scalar_t__ rtnl_put_cacheinfo (struct sk_buff*,TYPE_5__*,int,int,int,long,int) ;
 struct rtable* skb_rtable (struct sk_buff*) ;

__attribute__((used)) static int rt_fill_info(struct net *net,
   struct sk_buff *skb, u32 pid, u32 seq, int event,
   int nowait, unsigned int flags)
{
 struct rtable *rt = skb_rtable(skb);
 struct rtmsg *r;
 struct nlmsghdr *nlh;
 long expires;
 u32 id = 0, ts = 0, tsage = 0, error;

 nlh = nlmsg_put(skb, pid, seq, event, sizeof(*r), flags);
 if (nlh == ((void*)0))
  return -EMSGSIZE;

 r = nlmsg_data(nlh);
 r->rtm_family = AF_INET;
 r->rtm_dst_len = 32;
 r->rtm_src_len = 0;
 r->rtm_tos = rt->fl.fl4_tos;
 r->rtm_table = RT_TABLE_MAIN;
 NLA_PUT_U32(skb, RTA_TABLE, RT_TABLE_MAIN);
 r->rtm_type = rt->rt_type;
 r->rtm_scope = RT_SCOPE_UNIVERSE;
 r->rtm_protocol = RTPROT_UNSPEC;
 r->rtm_flags = (rt->rt_flags & ~0xFFFF) | RTM_F_CLONED;
 if (rt->rt_flags & RTCF_NOTIFY)
  r->rtm_flags |= RTM_F_NOTIFY;

 NLA_PUT_BE32(skb, RTA_DST, rt->rt_dst);

 if (rt->fl.fl4_src) {
  r->rtm_src_len = 32;
  NLA_PUT_BE32(skb, RTA_SRC, rt->fl.fl4_src);
 }
 if (rt->u.dst.dev)
  NLA_PUT_U32(skb, RTA_OIF, rt->u.dst.dev->ifindex);




 if (rt->fl.iif)
  NLA_PUT_BE32(skb, RTA_PREFSRC, rt->rt_spec_dst);
 else if (rt->rt_src != rt->fl.fl4_src)
  NLA_PUT_BE32(skb, RTA_PREFSRC, rt->rt_src);

 if (rt->rt_dst != rt->rt_gateway)
  NLA_PUT_BE32(skb, RTA_GATEWAY, rt->rt_gateway);

 if (rtnetlink_put_metrics(skb, rt->u.dst.metrics) < 0)
  goto nla_put_failure;

 error = rt->u.dst.error;
 expires = rt->u.dst.expires ? rt->u.dst.expires - jiffies : 0;
 if (rt->peer) {
  id = rt->peer->ip_id_count;
  if (rt->peer->tcp_ts_stamp) {
   ts = rt->peer->tcp_ts;
   tsage = get_seconds() - rt->peer->tcp_ts_stamp;
  }
 }

 if (rt->fl.iif) {
   NLA_PUT_U32(skb, RTA_IIF, rt->fl.iif);
 }

 if (rtnl_put_cacheinfo(skb, &rt->u.dst, id, ts, tsage,
          expires, error) < 0)
  goto nla_put_failure;

 return nlmsg_end(skb, nlh);

nla_put_failure:
 nlmsg_cancel(skb, nlh);
 return -EMSGSIZE;
}

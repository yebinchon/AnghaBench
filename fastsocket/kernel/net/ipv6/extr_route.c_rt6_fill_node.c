
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct rtmsg {int rtm_dst_len; int rtm_src_len; int rtm_table; int rtm_flags; int rtm_protocol; int rtm_scope; void* rtm_type; scalar_t__ rtm_tos; int rtm_family; } ;
struct TYPE_16__ {int error; scalar_t__ dev; TYPE_5__* neighbour; int metrics; } ;
struct TYPE_15__ {TYPE_8__ dst; } ;
struct TYPE_12__ {int addr; scalar_t__ plen; } ;
struct in6_addr {int dummy; } ;
struct TYPE_11__ {int plen; struct in6_addr addr; } ;
struct TYPE_10__ {int plen; struct in6_addr addr; } ;
struct rt6_info {int rt6i_flags; int rt6i_metric; long rt6i_expires; TYPE_7__ u; TYPE_6__* rt6i_dev; TYPE_4__ rt6i_prefsrc; TYPE_3__ rt6i_dst; TYPE_2__ rt6i_src; int rt6i_protocol; TYPE_1__* rt6i_table; } ;
struct nlmsghdr {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_14__ {int flags; int ifindex; } ;
struct TYPE_13__ {struct in6_addr primary_key; } ;
struct TYPE_9__ {int tb6_id; } ;


 int AF_INET6 ;
 int EMSGSIZE ;
 int IFF_LOOPBACK ;
 int NLA_PUT (struct sk_buff*,int ,int,struct in6_addr*) ;
 int NLA_PUT_U32 (struct sk_buff*,int ,int) ;
 int RT6_TABLE_UNSPEC ;
 int RTA_DST ;
 int RTA_GATEWAY ;
 int RTA_IIF ;
 int RTA_OIF ;
 int RTA_PREFSRC ;
 int RTA_PRIORITY ;
 int RTA_SRC ;
 int RTA_TABLE ;
 int RTF_ADDRCONF ;
 int RTF_CACHE ;
 int RTF_DEFAULT ;
 int RTF_DYNAMIC ;
 int RTF_EXPIRES ;
 int RTF_LOCAL ;
 int RTF_PREFIX_RT ;
 int RTF_REJECT ;
 int RTM_F_CLONED ;
 void* RTN_LOCAL ;
 void* RTN_UNICAST ;
 void* RTN_UNREACHABLE ;
 int RTPROT_KERNEL ;
 int RTPROT_RA ;
 int RTPROT_REDIRECT ;
 int RT_SCOPE_UNIVERSE ;
 scalar_t__ ip6_route_get_saddr (struct net*,struct rt6_info*,struct in6_addr*,int ,struct in6_addr*) ;
 int ip6mr_get_route (struct net*,struct sk_buff*,struct rtmsg*,int) ;
 int ipv6_addr_copy (struct in6_addr*,int *) ;
 scalar_t__ ipv6_addr_is_multicast (struct in6_addr*) ;
 long jiffies ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct rtmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int,int,int,int,unsigned int) ;
 scalar_t__ rtnetlink_put_metrics (struct sk_buff*,int ) ;
 scalar_t__ rtnl_put_cacheinfo (struct sk_buff*,TYPE_8__*,int ,int ,int ,long,int ) ;

__attribute__((used)) static int rt6_fill_node(struct net *net,
    struct sk_buff *skb, struct rt6_info *rt,
    struct in6_addr *dst, struct in6_addr *src,
    int iif, int type, u32 pid, u32 seq,
    int prefix, int nowait, unsigned int flags)
{
 struct rtmsg *rtm;
 struct nlmsghdr *nlh;
 long expires;
 u32 table;

 if (prefix) {
  if (!(rt->rt6i_flags & RTF_PREFIX_RT)) {

   return 1;
  }
 }

 nlh = nlmsg_put(skb, pid, seq, type, sizeof(*rtm), flags);
 if (nlh == ((void*)0))
  return -EMSGSIZE;

 rtm = nlmsg_data(nlh);
 rtm->rtm_family = AF_INET6;
 rtm->rtm_dst_len = rt->rt6i_dst.plen;
 rtm->rtm_src_len = rt->rt6i_src.plen;
 rtm->rtm_tos = 0;
 if (rt->rt6i_table)
  table = rt->rt6i_table->tb6_id;
 else
  table = RT6_TABLE_UNSPEC;
 rtm->rtm_table = table;
 NLA_PUT_U32(skb, RTA_TABLE, table);
 if (rt->rt6i_flags&RTF_REJECT)
  rtm->rtm_type = RTN_UNREACHABLE;
 else if (rt->rt6i_flags&RTF_LOCAL)
  rtm->rtm_type = RTN_LOCAL;
 else if (rt->rt6i_dev && (rt->rt6i_dev->flags&IFF_LOOPBACK))
  rtm->rtm_type = RTN_LOCAL;
 else
  rtm->rtm_type = RTN_UNICAST;
 rtm->rtm_flags = 0;
 rtm->rtm_scope = RT_SCOPE_UNIVERSE;
 rtm->rtm_protocol = rt->rt6i_protocol;
 if (rt->rt6i_flags&RTF_DYNAMIC)
  rtm->rtm_protocol = RTPROT_REDIRECT;
 else if (rt->rt6i_flags & RTF_ADDRCONF)
  rtm->rtm_protocol = RTPROT_KERNEL;
 else if (rt->rt6i_flags&RTF_DEFAULT)
  rtm->rtm_protocol = RTPROT_RA;

 if (rt->rt6i_flags&RTF_CACHE)
  rtm->rtm_flags |= RTM_F_CLONED;

 if (dst) {
  NLA_PUT(skb, RTA_DST, 16, dst);
  rtm->rtm_dst_len = 128;
 } else if (rtm->rtm_dst_len)
  NLA_PUT(skb, RTA_DST, 16, &rt->rt6i_dst.addr);







 if (iif) {
   NLA_PUT_U32(skb, RTA_IIF, iif);
 } else if (dst) {
  struct in6_addr saddr_buf;
  if (ip6_route_get_saddr(net, rt, dst, 0, &saddr_buf) == 0)
   NLA_PUT(skb, RTA_PREFSRC, 16, &saddr_buf);
 }

 if (rt->rt6i_prefsrc.plen) {
  struct in6_addr saddr_buf;
  ipv6_addr_copy(&saddr_buf, &rt->rt6i_prefsrc.addr);
  NLA_PUT(skb, RTA_PREFSRC, 16, &saddr_buf);
 }

 if (rtnetlink_put_metrics(skb, rt->u.dst.metrics) < 0)
  goto nla_put_failure;

 if (rt->u.dst.neighbour)
  NLA_PUT(skb, RTA_GATEWAY, 16, &rt->u.dst.neighbour->primary_key);

 if (rt->u.dst.dev)
  NLA_PUT_U32(skb, RTA_OIF, rt->rt6i_dev->ifindex);

 NLA_PUT_U32(skb, RTA_PRIORITY, rt->rt6i_metric);

 expires = (rt->rt6i_flags & RTF_EXPIRES) ? rt->rt6i_expires - jiffies : 0;

 if (rtnl_put_cacheinfo(skb, &rt->u.dst, 0, 0, 0,
          expires, rt->u.dst.error) < 0)
  goto nla_put_failure;

 return nlmsg_end(skb, nlh);

nla_put_failure:
 nlmsg_cancel(skb, nlh);
 return -EMSGSIZE;
}

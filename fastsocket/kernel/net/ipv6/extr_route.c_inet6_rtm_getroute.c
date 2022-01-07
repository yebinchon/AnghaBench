
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int sk; } ;
struct rtmsg {int dummy; } ;
struct TYPE_3__ {int dst; } ;
struct rt6_info {TYPE_1__ u; } ;
struct nlmsghdr {int nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ipv6hdr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct flowi {int fl6_src; int fl6_dst; void* oif; } ;
typedef int fl ;
struct TYPE_4__ {int pid; } ;


 int EINVAL ;
 int ENOBUFS ;
 int ENODEV ;
 int GFP_KERNEL ;
 scalar_t__ MAX_HEADER ;
 TYPE_2__ NETLINK_CB (struct sk_buff*) ;
 int NLMSG_GOODSIZE ;
 size_t RTA_DST ;
 size_t RTA_IIF ;
 int RTA_MAX ;
 size_t RTA_OIF ;
 size_t RTA_SRC ;
 int RTM_NEWROUTE ;
 struct net_device* __dev_get_by_index (struct net*,int) ;
 struct sk_buff* alloc_skb (int ,int ) ;
 scalar_t__ ip6_route_output (struct net*,int *,struct flowi*) ;
 int ipv6_addr_copy (int *,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int memset (struct flowi*,int ,int) ;
 int nla_data (struct nlattr*) ;
 void* nla_get_u32 (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 int nlmsg_parse (struct nlmsghdr*,int,struct nlattr**,int ,int ) ;
 int rt6_fill_node (struct net*,struct sk_buff*,struct rt6_info*,int *,int *,int,int ,int ,int ,int ,int ,int ) ;
 int rtm_ipv6_policy ;
 int rtnl_unicast (struct sk_buff*,struct net*,int ) ;
 int skb_dst_set (struct sk_buff*,int *) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int inet6_rtm_getroute(struct sk_buff *in_skb, struct nlmsghdr* nlh, void *arg)
{
 struct net *net = sock_net(in_skb->sk);
 struct nlattr *tb[RTA_MAX+1];
 struct rt6_info *rt;
 struct sk_buff *skb;
 struct rtmsg *rtm;
 struct flowi fl;
 int err, iif = 0;

 err = nlmsg_parse(nlh, sizeof(*rtm), tb, RTA_MAX, rtm_ipv6_policy);
 if (err < 0)
  goto errout;

 err = -EINVAL;
 memset(&fl, 0, sizeof(fl));

 if (tb[RTA_SRC]) {
  if (nla_len(tb[RTA_SRC]) < sizeof(struct in6_addr))
   goto errout;

  ipv6_addr_copy(&fl.fl6_src, nla_data(tb[RTA_SRC]));
 }

 if (tb[RTA_DST]) {
  if (nla_len(tb[RTA_DST]) < sizeof(struct in6_addr))
   goto errout;

  ipv6_addr_copy(&fl.fl6_dst, nla_data(tb[RTA_DST]));
 }

 if (tb[RTA_IIF])
  iif = nla_get_u32(tb[RTA_IIF]);

 if (tb[RTA_OIF])
  fl.oif = nla_get_u32(tb[RTA_OIF]);

 if (iif) {
  struct net_device *dev;
  dev = __dev_get_by_index(net, iif);
  if (!dev) {
   err = -ENODEV;
   goto errout;
  }
 }

 skb = alloc_skb(NLMSG_GOODSIZE, GFP_KERNEL);
 if (skb == ((void*)0)) {
  err = -ENOBUFS;
  goto errout;
 }




 skb_reset_mac_header(skb);
 skb_reserve(skb, MAX_HEADER + sizeof(struct ipv6hdr));

 rt = (struct rt6_info*) ip6_route_output(net, ((void*)0), &fl);
 skb_dst_set(skb, &rt->u.dst);

 err = rt6_fill_node(net, skb, rt, &fl.fl6_dst, &fl.fl6_src, iif,
       RTM_NEWROUTE, NETLINK_CB(in_skb).pid,
       nlh->nlmsg_seq, 0, 0, 0);
 if (err < 0) {
  kfree_skb(skb);
  goto errout;
 }

 err = rtnl_unicast(skb, net, NETLINK_CB(in_skb).pid);
errout:
 return err;
}

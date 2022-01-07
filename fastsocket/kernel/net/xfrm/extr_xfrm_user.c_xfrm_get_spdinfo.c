
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct TYPE_3__ {int nlsk; } ;
struct net {TYPE_1__ xfrm; } ;
struct TYPE_4__ {int pid; } ;


 int BUG () ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 TYPE_2__ NETLINK_CB (struct sk_buff*) ;
 scalar_t__ build_spdinfo (struct sk_buff*,int ,int ,int ) ;
 int * nlmsg_data (struct nlmsghdr*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int nlmsg_unicast (int ,struct sk_buff*,int ) ;
 struct net* sock_net (int ) ;
 int xfrm_spdinfo_msgsize () ;

__attribute__((used)) static int xfrm_get_spdinfo(struct sk_buff *skb, struct nlmsghdr *nlh,
  struct nlattr **attrs)
{
 struct net *net = sock_net(skb->sk);
 struct sk_buff *r_skb;
 u32 *flags = nlmsg_data(nlh);
 u32 spid = NETLINK_CB(skb).pid;
 u32 seq = nlh->nlmsg_seq;

 r_skb = nlmsg_new(xfrm_spdinfo_msgsize(), GFP_ATOMIC);
 if (r_skb == ((void*)0))
  return -ENOMEM;

 if (build_spdinfo(r_skb, spid, seq, *flags) < 0)
  BUG();

 return nlmsg_unicast(net->xfrm.nlsk, r_skb, spid);
}

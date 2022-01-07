
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tc_action {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_seq; } ;


 int EINVAL ;
 int ENOBUFS ;
 int GFP_KERNEL ;
 int NLMSG_GOODSIZE ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int init_net ;
 int kfree_skb (struct sk_buff*) ;
 int rtnl_unicast (struct sk_buff*,int *,int ) ;
 scalar_t__ tca_get_fill (struct sk_buff*,struct tc_action*,int ,int ,int ,int,int ,int ) ;

__attribute__((used)) static int
act_get_notify(u32 pid, struct nlmsghdr *n, struct tc_action *a, int event)
{
 struct sk_buff *skb;

 skb = alloc_skb(NLMSG_GOODSIZE, GFP_KERNEL);
 if (!skb)
  return -ENOBUFS;
 if (tca_get_fill(skb, a, pid, n->nlmsg_seq, 0, event, 0, 0) <= 0) {
  kfree_skb(skb);
  return -EINVAL;
 }

 return rtnl_unicast(skb, &init_net, pid);
}

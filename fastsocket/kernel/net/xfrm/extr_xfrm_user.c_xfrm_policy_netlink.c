
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xfrm_policy {int dummy; } ;
struct xfrm_dump_info {scalar_t__ nlmsg_flags; int nlmsg_seq; struct sk_buff* out_skb; struct sk_buff* in_skb; } ;
struct sk_buff {int dummy; } ;


 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int NLMSG_DEFAULT_SIZE ;
 scalar_t__ dump_one_policy (struct xfrm_policy*,int,int ,struct xfrm_dump_info*) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

__attribute__((used)) static struct sk_buff *xfrm_policy_netlink(struct sk_buff *in_skb,
       struct xfrm_policy *xp,
       int dir, u32 seq)
{
 struct xfrm_dump_info info;
 struct sk_buff *skb;

 skb = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!skb)
  return ERR_PTR(-ENOMEM);

 info.in_skb = in_skb;
 info.out_skb = skb;
 info.nlmsg_seq = seq;
 info.nlmsg_flags = 0;

 if (dump_one_policy(xp, dir, 0, &info) < 0) {
  kfree_skb(skb);
  return ((void*)0);
 }

 return skb;
}

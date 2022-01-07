
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_policy_walk {int dummy; } ;
struct xfrm_dump_info {int nlmsg_flags; int nlmsg_seq; struct sk_buff* out_skb; int in_skb; } ;
struct sk_buff {int len; int sk; } ;
struct netlink_callback {int* args; TYPE_1__* nlh; int skb; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int nlmsg_seq; } ;


 int BUILD_BUG_ON (int) ;
 int NLM_F_MULTI ;
 int XFRM_POLICY_TYPE_ANY ;
 int dump_one_policy ;
 struct net* sock_net (int ) ;
 int xfrm_policy_walk (struct net*,struct xfrm_policy_walk*,int ,struct xfrm_dump_info*) ;
 int xfrm_policy_walk_init (struct xfrm_policy_walk*,int ) ;

__attribute__((used)) static int xfrm_dump_policy(struct sk_buff *skb, struct netlink_callback *cb)
{
 struct net *net = sock_net(skb->sk);
 struct xfrm_policy_walk *walk = (struct xfrm_policy_walk *) &cb->args[1];
 struct xfrm_dump_info info;

 BUILD_BUG_ON(sizeof(struct xfrm_policy_walk) >
       sizeof(cb->args) - sizeof(cb->args[0]));

 info.in_skb = cb->skb;
 info.out_skb = skb;
 info.nlmsg_seq = cb->nlh->nlmsg_seq;
 info.nlmsg_flags = NLM_F_MULTI;

 if (!cb->args[0]) {
  cb->args[0] = 1;
  xfrm_policy_walk_init(walk, XFRM_POLICY_TYPE_ANY);
 }

 (void) xfrm_policy_walk(net, walk, dump_one_policy, &info);

 return skb->len;
}

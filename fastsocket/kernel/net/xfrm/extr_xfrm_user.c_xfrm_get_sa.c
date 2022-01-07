
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xfrm_usersa_id {int dummy; } ;
struct xfrm_state {int dummy; } ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct TYPE_3__ {int nlsk; } ;
struct net {TYPE_1__ xfrm; } ;
struct TYPE_4__ {int pid; } ;


 int ESRCH ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 TYPE_2__ NETLINK_CB (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 struct xfrm_usersa_id* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_unicast (int ,struct sk_buff*,int ) ;
 struct net* sock_net (int ) ;
 struct sk_buff* xfrm_state_netlink (struct sk_buff*,struct xfrm_state*,int ) ;
 int xfrm_state_put (struct xfrm_state*) ;
 struct xfrm_state* xfrm_user_state_lookup (struct net*,struct xfrm_usersa_id*,struct nlattr**,int*) ;

__attribute__((used)) static int xfrm_get_sa(struct sk_buff *skb, struct nlmsghdr *nlh,
  struct nlattr **attrs)
{
 struct net *net = sock_net(skb->sk);
 struct xfrm_usersa_id *p = nlmsg_data(nlh);
 struct xfrm_state *x;
 struct sk_buff *resp_skb;
 int err = -ESRCH;

 x = xfrm_user_state_lookup(net, p, attrs, &err);
 if (x == ((void*)0))
  goto out_noput;

 resp_skb = xfrm_state_netlink(skb, x, nlh->nlmsg_seq);
 if (IS_ERR(resp_skb)) {
  err = PTR_ERR(resp_skb);
 } else {
  err = nlmsg_unicast(net->xfrm.nlsk, resp_skb, NETLINK_CB(skb).pid);
 }
 xfrm_state_put(x);
out_noput:
 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_link {int (* doit ) (struct sk_buff*,struct nlmsghdr*,struct nlattr**) ;int done; int * dump; } ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_type; int nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct netlink_dump_control {int done; int * dump; } ;
struct TYPE_2__ {int nlsk; } ;
struct net {TYPE_1__ xfrm; } ;


 int CAP_NET_ADMIN ;
 int EINVAL ;
 int EPERM ;
 int NLM_F_DUMP ;
 int XFRMA_MAX ;
 int XFRM_MSG_BASE ;
 int XFRM_MSG_GETPOLICY ;
 int XFRM_MSG_GETSA ;
 int XFRM_MSG_MAX ;
 int netlink_dump_start (int ,struct sk_buff*,struct nlmsghdr*,struct netlink_dump_control*) ;
 int nlmsg_parse (struct nlmsghdr*,int ,struct nlattr**,int ,int ) ;
 scalar_t__ security_netlink_recv (struct sk_buff*,int ) ;
 struct net* sock_net (int ) ;
 int stub1 (struct sk_buff*,struct nlmsghdr*,struct nlattr**) ;
 struct xfrm_link* xfrm_dispatch ;
 int * xfrm_msg_min ;
 int xfrma_policy ;

__attribute__((used)) static int xfrm_user_rcv_msg(struct sk_buff *skb, struct nlmsghdr *nlh)
{
 struct net *net = sock_net(skb->sk);
 struct nlattr *attrs[XFRMA_MAX+1];
 struct xfrm_link *link;
 int type, err;

 type = nlh->nlmsg_type;
 if (type > XFRM_MSG_MAX)
  return -EINVAL;

 type -= XFRM_MSG_BASE;
 link = &xfrm_dispatch[type];


 if (security_netlink_recv(skb, CAP_NET_ADMIN))
  return -EPERM;

 if ((type == (XFRM_MSG_GETSA - XFRM_MSG_BASE) ||
      type == (XFRM_MSG_GETPOLICY - XFRM_MSG_BASE)) &&
     (nlh->nlmsg_flags & NLM_F_DUMP)) {
  if (link->dump == ((void*)0))
   return -EINVAL;

  {
   struct netlink_dump_control c = {
    .dump = link->dump,
    .done = link->done,
   };
   return netlink_dump_start(net->xfrm.nlsk, skb, nlh, &c);
  }
 }

 err = nlmsg_parse(nlh, xfrm_msg_min[type], attrs, XFRMA_MAX,
     xfrma_policy);
 if (err < 0)
  return err;

 if (link->doit == ((void*)0))
  return -EINVAL;

 return link->doit(skb, nlh, attrs);
}

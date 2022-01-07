
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct xfrm_usersa_id {int family; int proto; int spi; int daddr; } ;
struct xfrm_state {int lock; } ;
struct xfrm_mark {int dummy; } ;
struct xfrm_aevent_id {int flags; struct xfrm_usersa_id sa_id; } ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_pid; int nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct TYPE_5__ {int nlsk; } ;
struct net {TYPE_2__ xfrm; } ;
struct TYPE_4__ {int aevent; } ;
struct km_event {int pid; int seq; TYPE_1__ data; } ;
struct TYPE_6__ {int pid; } ;


 int BUG () ;
 int ENOMEM ;
 int ESRCH ;
 int GFP_ATOMIC ;
 TYPE_3__ NETLINK_CB (struct sk_buff*) ;
 scalar_t__ build_aevent (struct sk_buff*,struct xfrm_state*,struct km_event*) ;
 int kfree_skb (struct sk_buff*) ;
 struct xfrm_aevent_id* nlmsg_data (struct nlmsghdr*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int nlmsg_unicast (int ,struct sk_buff*,int ) ;
 struct net* sock_net (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int xfrm_aevent_msgsize () ;
 int xfrm_mark_get (struct nlattr**,struct xfrm_mark*) ;
 struct xfrm_state* xfrm_state_lookup_with_mark (struct net*,int ,int *,int ,int ,int ) ;
 int xfrm_state_put (struct xfrm_state*) ;

__attribute__((used)) static int xfrm_get_ae(struct sk_buff *skb, struct nlmsghdr *nlh,
  struct nlattr **attrs)
{
 struct net *net = sock_net(skb->sk);
 struct xfrm_state *x;
 struct sk_buff *r_skb;
 int err;
 struct km_event c;
 u32 mark;
 struct xfrm_mark m;
 struct xfrm_aevent_id *p = nlmsg_data(nlh);
 struct xfrm_usersa_id *id = &p->sa_id;

 r_skb = nlmsg_new(xfrm_aevent_msgsize(), GFP_ATOMIC);
 if (r_skb == ((void*)0))
  return -ENOMEM;

 mark = xfrm_mark_get(attrs, &m);

 x = xfrm_state_lookup_with_mark(net, mark, &id->daddr, id->spi, id->proto, id->family);
 if (x == ((void*)0)) {
  kfree_skb(r_skb);
  return -ESRCH;
 }






 spin_lock_bh(&x->lock);
 c.data.aevent = p->flags;
 c.seq = nlh->nlmsg_seq;
 c.pid = nlh->nlmsg_pid;

 if (build_aevent(r_skb, x, &c) < 0)
  BUG();
 err = nlmsg_unicast(net->xfrm.nlsk, r_skb, NETLINK_CB(skb).pid);
 spin_unlock_bh(&x->lock);
 xfrm_state_put(x);
 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int xfrm_address_t ;
typedef int u32 ;
struct TYPE_7__ {int proto; int daddr; } ;
struct TYPE_8__ {int family; int saddr; TYPE_2__ id; int reqid; int mode; scalar_t__ seq; } ;
struct xfrm_userspi_info {int max; int min; TYPE_3__ info; } ;
struct TYPE_6__ {int daddr; } ;
struct xfrm_state {TYPE_1__ id; } ;
struct xfrm_mark {int dummy; } ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct TYPE_9__ {int nlsk; } ;
struct net {TYPE_4__ xfrm; } ;
struct TYPE_10__ {int pid; } ;


 int ENOENT ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 TYPE_5__ NETLINK_CB (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 struct xfrm_userspi_info* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_unicast (int ,struct sk_buff*,int ) ;
 struct net* sock_net (int ) ;
 int verify_userspi_info (struct xfrm_userspi_info*) ;
 scalar_t__ xfrm_addr_cmp (int *,int *,int) ;
 int xfrm_alloc_spi (struct xfrm_state*,int ,int ) ;
 struct xfrm_state* xfrm_find_acq (struct net*,struct xfrm_mark*,int ,int ,int ,int *,int *,int,int) ;
 struct xfrm_state* xfrm_find_acq_byseq (struct net*,int ,scalar_t__) ;
 int xfrm_mark_get (struct nlattr**,struct xfrm_mark*) ;
 struct sk_buff* xfrm_state_netlink (struct sk_buff*,struct xfrm_state*,int ) ;
 int xfrm_state_put (struct xfrm_state*) ;

__attribute__((used)) static int xfrm_alloc_userspi(struct sk_buff *skb, struct nlmsghdr *nlh,
  struct nlattr **attrs)
{
 struct net *net = sock_net(skb->sk);
 struct xfrm_state *x;
 struct xfrm_userspi_info *p;
 struct sk_buff *resp_skb;
 xfrm_address_t *daddr;
 int family;
 int err;
 u32 mark;
 struct xfrm_mark m;

 p = nlmsg_data(nlh);
 err = verify_userspi_info(p);
 if (err)
  goto out_noput;

 family = p->info.family;
 daddr = &p->info.id.daddr;

 x = ((void*)0);

 mark = xfrm_mark_get(attrs, &m);
 if (p->info.seq) {
  x = xfrm_find_acq_byseq(net, mark, p->info.seq);
  if (x && xfrm_addr_cmp(&x->id.daddr, daddr, family)) {
   xfrm_state_put(x);
   x = ((void*)0);
  }
 }

 if (!x)
  x = xfrm_find_acq(net, &m, p->info.mode, p->info.reqid,
      p->info.id.proto, daddr,
      &p->info.saddr, 1,
      family);
 err = -ENOENT;
 if (x == ((void*)0))
  goto out_noput;

 err = xfrm_alloc_spi(x, p->min, p->max);
 if (err)
  goto out;

 resp_skb = xfrm_state_netlink(skb, x, nlh->nlmsg_seq);
 if (IS_ERR(resp_skb)) {
  err = PTR_ERR(resp_skb);
  goto out;
 }

 err = nlmsg_unicast(net->xfrm.nlsk, resp_skb, NETLINK_CB(skb).pid);

out:
 xfrm_state_put(x);
out_noput:
 return err;
}

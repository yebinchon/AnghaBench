
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int xfrm_address_t ;
typedef int u8 ;
struct TYPE_8__ {int packets; int bytes; } ;
struct TYPE_6__ {scalar_t__ state; } ;
struct TYPE_5__ {int flags; } ;
struct xfrm_state {int lock; TYPE_4__ curlft; TYPE_3__* type; TYPE_2__ km; TYPE_1__ props; } ;
struct sk_buff {scalar_t__ len; struct sec_path* sp; int mark; int dev; } ;
struct sec_path {scalar_t__ len; struct xfrm_state** xvec; int refcnt; } ;
struct net {int dummy; } ;
struct TYPE_7__ {scalar_t__ (* input ) (struct xfrm_state*,struct sk_buff*) ;} ;


 int AF_INET6 ;
 int LINUX_MIB_XFRMINBUFFERERROR ;
 int LINUX_MIB_XFRMINERROR ;
 int LINUX_MIB_XFRMINNOSTATES ;
 int XFRM_INC_STATS (struct net*,int ) ;
 scalar_t__ XFRM_MAX_DEPTH ;
 scalar_t__ XFRM_STATE_VALID ;
 int XFRM_STATE_WILDRECV ;
 int atomic_read (int *) ;
 struct net* dev_net (int ) ;
 int in6addr_any ;
 scalar_t__ likely (int) ;
 struct sec_path* secpath_dup (struct sec_path*) ;
 int secpath_put (struct sec_path*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ stub1 (struct xfrm_state*,struct sk_buff*) ;
 int xfrm_audit_state_notfound_simple (struct sk_buff*,int ) ;
 int xfrm_state_check_expire (struct xfrm_state*) ;
 struct xfrm_state* xfrm_state_lookup_byaddr (struct net*,int ,int *,int *,int ,int ) ;
 int xfrm_state_put (struct xfrm_state*) ;

int xfrm6_input_addr(struct sk_buff *skb, xfrm_address_t *daddr,
       xfrm_address_t *saddr, u8 proto)
{
 struct net *net = dev_net(skb->dev);
 struct xfrm_state *x = ((void*)0);
 int i = 0;


 if (!skb->sp || atomic_read(&skb->sp->refcnt) != 1) {
  struct sec_path *sp;

  sp = secpath_dup(skb->sp);
  if (!sp) {
   XFRM_INC_STATS(net, LINUX_MIB_XFRMINERROR);
   goto drop;
  }
  if (skb->sp)
   secpath_put(skb->sp);
  skb->sp = sp;
 }

 if (1 + skb->sp->len == XFRM_MAX_DEPTH) {
  XFRM_INC_STATS(net, LINUX_MIB_XFRMINBUFFERERROR);
  goto drop;
 }

 for (i = 0; i < 3; i++) {
  xfrm_address_t *dst, *src;

  switch (i) {
  case 0:
   dst = daddr;
   src = saddr;
   break;
  case 1:

   dst = daddr;
   src = (xfrm_address_t *)&in6addr_any;
   break;
  default:

   dst = (xfrm_address_t *)&in6addr_any;
   src = (xfrm_address_t *)&in6addr_any;
   break;
  }

  x = xfrm_state_lookup_byaddr(net, skb->mark, dst, src, proto, AF_INET6);
  if (!x)
   continue;

  spin_lock(&x->lock);

  if ((!i || (x->props.flags & XFRM_STATE_WILDRECV)) &&
      likely(x->km.state == XFRM_STATE_VALID) &&
      !xfrm_state_check_expire(x)) {
   spin_unlock(&x->lock);
   if (x->type->input(x, skb) > 0) {

    break;
   }
  } else
   spin_unlock(&x->lock);

  xfrm_state_put(x);
  x = ((void*)0);
 }

 if (!x) {
  XFRM_INC_STATS(net, LINUX_MIB_XFRMINNOSTATES);
  xfrm_audit_state_notfound_simple(skb, AF_INET6);
  goto drop;
 }

 skb->sp->xvec[skb->sp->len++] = x;

 spin_lock(&x->lock);

 x->curlft.bytes += skb->len;
 x->curlft.packets++;

 spin_unlock(&x->lock);

 return 1;

drop:
 return -1;
}

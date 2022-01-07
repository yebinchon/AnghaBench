
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_15__ ;
typedef struct TYPE_20__ TYPE_14__ ;
typedef struct TYPE_19__ TYPE_13__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


typedef int xfrm_address_t ;
struct TYPE_30__ {int daddr; } ;
struct TYPE_29__ {scalar_t__ family; } ;
struct TYPE_28__ {int packets; int bytes; } ;
struct TYPE_27__ {scalar_t__ replay_window; } ;
struct TYPE_26__ {int integrity_failed; } ;
struct TYPE_22__ {scalar_t__ state; } ;
struct xfrm_state {int lock; struct xfrm_mode* inner_mode; TYPE_11__* outer_mode; TYPE_9__ id; TYPE_8__ sel; TYPE_7__ curlft; TYPE_6__ props; TYPE_5__ stats; TYPE_4__* type; TYPE_2__* encap; TYPE_1__ km; } ;
struct xfrm_mode {TYPE_12__* afinfo; scalar_t__ (* input ) (struct xfrm_state*,struct sk_buff*) ;} ;
struct sk_buff {scalar_t__ len; struct sec_path* sp; int mark; int dev; } ;
struct sec_path {scalar_t__ len; struct xfrm_state** xvec; int refcnt; } ;
struct net {int dummy; } ;
typedef scalar_t__ __be32 ;
struct TYPE_25__ {int (* input ) (struct xfrm_state*,struct sk_buff*) ;int proto; } ;
struct TYPE_24__ {scalar_t__ input; } ;
struct TYPE_23__ {int encap_type; } ;
struct TYPE_21__ {int protocol; } ;
struct TYPE_20__ {TYPE_3__ seq; } ;
struct TYPE_19__ {unsigned int family; scalar_t__ daddroff; } ;
struct TYPE_18__ {int (* transport_finish ) (struct sk_buff*,int) ;} ;
struct TYPE_17__ {int flags; TYPE_10__* afinfo; } ;
struct TYPE_16__ {unsigned int family; } ;


 scalar_t__ AF_UNSPEC ;
 int EBADMSG ;
 int EINPROGRESS ;
 int LINUX_MIB_XFRMINBUFFERERROR ;
 int LINUX_MIB_XFRMINERROR ;
 int LINUX_MIB_XFRMINHDRERROR ;
 int LINUX_MIB_XFRMINNOSTATES ;
 int LINUX_MIB_XFRMINSTATEEXPIRED ;
 int LINUX_MIB_XFRMINSTATEINVALID ;
 int LINUX_MIB_XFRMINSTATEMISMATCH ;
 int LINUX_MIB_XFRMINSTATEMODEERROR ;
 int LINUX_MIB_XFRMINSTATEPROTOERROR ;
 int LINUX_MIB_XFRMINSTATESEQERROR ;
 int XFRM_INC_STATS (struct net*,int ) ;
 scalar_t__ XFRM_MAX_DEPTH ;
 int XFRM_MODE_FLAG_TUNNEL ;
 TYPE_15__* XFRM_MODE_SKB_CB (struct sk_buff*) ;
 TYPE_14__* XFRM_SKB_CB (struct sk_buff*) ;
 TYPE_13__* XFRM_SPI_SKB_CB (struct sk_buff*) ;
 scalar_t__ XFRM_STATE_VALID ;
 int atomic_read (int *) ;
 struct net* dev_net (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int netif_rx (struct sk_buff*) ;
 int nf_reset (struct sk_buff*) ;
 struct sec_path* secpath_dup (struct sec_path*) ;
 int secpath_put (struct sec_path*) ;
 int skb_dst_drop (struct sk_buff*) ;
 scalar_t__ skb_network_header (struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct xfrm_state*,struct sk_buff*) ;
 scalar_t__ stub2 (struct xfrm_state*,struct sk_buff*) ;
 int stub3 (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;
 int xfrm_audit_state_icvfail (struct xfrm_state*,struct sk_buff*,int ) ;
 int xfrm_audit_state_notfound (struct sk_buff*,unsigned int,scalar_t__,scalar_t__) ;
 struct xfrm_state* xfrm_input_state (struct sk_buff*) ;
 struct xfrm_mode* xfrm_ip2inner_mode (struct xfrm_state*,int) ;
 int xfrm_parse_spi (struct sk_buff*,int,scalar_t__*,scalar_t__*) ;
 int xfrm_replay_advance (struct xfrm_state*,scalar_t__) ;
 scalar_t__ xfrm_replay_check (struct xfrm_state*,struct sk_buff*,scalar_t__) ;
 scalar_t__ xfrm_state_check_expire (struct xfrm_state*) ;
 struct xfrm_state* xfrm_state_lookup_with_mark (struct net*,int ,int *,scalar_t__,int,unsigned int) ;

int xfrm_input(struct sk_buff *skb, int nexthdr, __be32 spi, int encap_type)
{
 struct net *net = dev_net(skb->dev);
 int err;
 __be32 seq;
 struct xfrm_state *x;
 xfrm_address_t *daddr;
 struct xfrm_mode *inner_mode;
 unsigned int family;
 int decaps = 0;
 int async = 0;


 if (encap_type < 0) {
  async = 1;
  x = xfrm_input_state(skb);
  seq = XFRM_SKB_CB(skb)->seq.input;
  goto resume;
 }


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

 daddr = (xfrm_address_t *)(skb_network_header(skb) +
       XFRM_SPI_SKB_CB(skb)->daddroff);
 family = XFRM_SPI_SKB_CB(skb)->family;

 seq = 0;
 if (!spi && (err = xfrm_parse_spi(skb, nexthdr, &spi, &seq)) != 0) {
  XFRM_INC_STATS(net, LINUX_MIB_XFRMINHDRERROR);
  goto drop;
 }

 do {
  if (skb->sp->len == XFRM_MAX_DEPTH) {
   XFRM_INC_STATS(net, LINUX_MIB_XFRMINBUFFERERROR);
   goto drop;
  }

  x = xfrm_state_lookup_with_mark(net, skb->mark, daddr, spi, nexthdr, family);
  if (x == ((void*)0)) {
   XFRM_INC_STATS(net, LINUX_MIB_XFRMINNOSTATES);
   xfrm_audit_state_notfound(skb, family, spi, seq);
   goto drop;
  }

  skb->sp->xvec[skb->sp->len++] = x;

  spin_lock(&x->lock);
  if (unlikely(x->km.state != XFRM_STATE_VALID)) {
   XFRM_INC_STATS(net, LINUX_MIB_XFRMINSTATEINVALID);
   goto drop_unlock;
  }

  if ((x->encap ? x->encap->encap_type : 0) != encap_type) {
   XFRM_INC_STATS(net, LINUX_MIB_XFRMINSTATEMISMATCH);
   goto drop_unlock;
  }

  if (x->props.replay_window && xfrm_replay_check(x, skb, seq)) {
   XFRM_INC_STATS(net, LINUX_MIB_XFRMINSTATESEQERROR);
   goto drop_unlock;
  }

  if (xfrm_state_check_expire(x)) {
   XFRM_INC_STATS(net, LINUX_MIB_XFRMINSTATEEXPIRED);
   goto drop_unlock;
  }

  spin_unlock(&x->lock);

  XFRM_SKB_CB(skb)->seq.input = seq;

  nexthdr = x->type->input(x, skb);

  if (nexthdr == -EINPROGRESS)
   return 0;

resume:
  spin_lock(&x->lock);
  if (nexthdr <= 0) {
   if (nexthdr == -EBADMSG) {
    xfrm_audit_state_icvfail(x, skb,
        x->type->proto);
    x->stats.integrity_failed++;
   }
   XFRM_INC_STATS(net, LINUX_MIB_XFRMINSTATEPROTOERROR);
   goto drop_unlock;
  }


  encap_type = 0;

  if (x->props.replay_window)
   xfrm_replay_advance(x, seq);

  x->curlft.bytes += skb->len;
  x->curlft.packets++;

  spin_unlock(&x->lock);

  XFRM_MODE_SKB_CB(skb)->protocol = nexthdr;

  inner_mode = x->inner_mode;

  if (x->sel.family == AF_UNSPEC) {
   inner_mode = xfrm_ip2inner_mode(x, XFRM_MODE_SKB_CB(skb)->protocol);
   if (inner_mode == ((void*)0))
    goto drop;
  }

  if (inner_mode->input(x, skb)) {
   XFRM_INC_STATS(net, LINUX_MIB_XFRMINSTATEMODEERROR);
   goto drop;
  }

  if (x->outer_mode->flags & XFRM_MODE_FLAG_TUNNEL) {
   decaps = 1;
   break;
  }





  daddr = &x->id.daddr;
  family = x->outer_mode->afinfo->family;

  err = xfrm_parse_spi(skb, nexthdr, &spi, &seq);
  if (err < 0) {
   XFRM_INC_STATS(net, LINUX_MIB_XFRMINHDRERROR);
   goto drop;
  }
 } while (!err);

 nf_reset(skb);

 if (decaps) {
  skb_dst_drop(skb);
  netif_rx(skb);
  return 0;
 } else {
  return x->inner_mode->afinfo->transport_finish(skb, async);
 }

drop_unlock:
 spin_unlock(&x->lock);
drop:
 kfree_skb(skb);
 return 0;
}

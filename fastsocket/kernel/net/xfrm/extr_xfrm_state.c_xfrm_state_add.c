
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int family; int saddr; int reqid; int mode; } ;
struct TYPE_6__ {scalar_t__ proto; int daddr; } ;
struct TYPE_8__ {int v; int m; } ;
struct TYPE_5__ {scalar_t__ seq; } ;
struct xfrm_state {TYPE_3__ props; TYPE_2__ id; TYPE_4__ mark; TYPE_1__ km; } ;
struct net {int dummy; } ;


 int EEXIST ;
 int IPSEC_PROTO_ANY ;
 struct xfrm_state* __find_acq_core (struct net*,TYPE_4__*,int,int ,int ,scalar_t__,int *,int *,int ) ;
 struct xfrm_state* __xfrm_find_acq_byseq (struct net*,int,scalar_t__) ;
 int __xfrm_state_bump_genids (struct xfrm_state*) ;
 int __xfrm_state_insert (struct xfrm_state*) ;
 struct xfrm_state* __xfrm_state_locate (struct xfrm_state*,int,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ xfrm_addr_cmp (int *,int *,int) ;
 int xfrm_id_proto_match (scalar_t__,int ) ;
 int xfrm_state_delete (struct xfrm_state*) ;
 int xfrm_state_lock ;
 int xfrm_state_put (struct xfrm_state*) ;
 struct net* xs_net (struct xfrm_state*) ;

int xfrm_state_add(struct xfrm_state *x)
{
 struct net *net = xs_net(x);
 struct xfrm_state *x1, *to_put;
 int family;
 int err;
 u32 mark = x->mark.v & x->mark.m;
 int use_spi = xfrm_id_proto_match(x->id.proto, IPSEC_PROTO_ANY);

 family = x->props.family;

 to_put = ((void*)0);

 spin_lock_bh(&xfrm_state_lock);

 x1 = __xfrm_state_locate(x, use_spi, family);
 if (x1) {
  to_put = x1;
  x1 = ((void*)0);
  err = -EEXIST;
  goto out;
 }

 if (use_spi && x->km.seq) {
  x1 = __xfrm_find_acq_byseq(net, mark, x->km.seq);
  if (x1 && ((x1->id.proto != x->id.proto) ||
      xfrm_addr_cmp(&x1->id.daddr, &x->id.daddr, family))) {
   to_put = x1;
   x1 = ((void*)0);
  }
 }

 if (use_spi && !x1)
  x1 = __find_acq_core(net, &x->mark, family, x->props.mode,
         x->props.reqid, x->id.proto,
         &x->id.daddr, &x->props.saddr, 0);

 __xfrm_state_bump_genids(x);
 __xfrm_state_insert(x);
 err = 0;

out:
 spin_unlock_bh(&xfrm_state_lock);

 if (x1) {
  xfrm_state_delete(x1);
  xfrm_state_put(x1);
 }

 if (to_put)
  xfrm_state_put(to_put);

 return err;
}

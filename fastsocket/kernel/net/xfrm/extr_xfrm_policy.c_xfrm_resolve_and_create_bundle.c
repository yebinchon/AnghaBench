
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct xfrm_state {int dummy; } ;
struct xfrm_policy {int genid; int selector; } ;
struct xfrm_dst {int num_xfrms; int num_pols; int policy_genid; int pols; } ;
struct net {int dummy; } ;
struct flowi {int dummy; } ;
struct dst_entry {int dummy; } ;


 int EAGAIN ;
 struct xfrm_dst* ERR_CAST (struct dst_entry*) ;
 struct xfrm_dst* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct dst_entry*) ;
 int LINUX_MIB_XFRMOUTBUNDLECHECKERROR ;
 int LINUX_MIB_XFRMOUTBUNDLEGENERROR ;
 int LINUX_MIB_XFRMOUTPOLERROR ;
 int XFRM_INC_STATS (struct net*,int ) ;
 int XFRM_MAX_DEPTH ;
 int atomic_read (int *) ;
 int dst_free (struct dst_entry*) ;
 int memcpy (int ,struct xfrm_policy**,int) ;
 scalar_t__ unlikely (int) ;
 struct dst_entry* xfrm_bundle_create (struct xfrm_policy*,struct xfrm_state**,int,struct flowi*,struct dst_entry*) ;
 int xfrm_dst_update_origin (struct dst_entry*,struct flowi*) ;
 int xfrm_dst_update_parent (struct dst_entry*,int *) ;
 int xfrm_tmpl_resolve (struct xfrm_policy**,int,struct flowi*,struct xfrm_state**,int ) ;
 struct net* xp_net (struct xfrm_policy*) ;

__attribute__((used)) static struct xfrm_dst *
xfrm_resolve_and_create_bundle(struct xfrm_policy **pols, int num_pols,
          struct flowi *fl, u16 family,
          struct dst_entry *dst_orig)
{
 struct net *net = xp_net(pols[0]);
 struct xfrm_state *xfrm[XFRM_MAX_DEPTH];
 struct dst_entry *dst;
 struct xfrm_dst *xdst;
 int err;


 err = xfrm_tmpl_resolve(pols, num_pols, fl, xfrm, family);
 if (err <= 0) {
  if (err != 0 && err != -EAGAIN)
   XFRM_INC_STATS(net, LINUX_MIB_XFRMOUTPOLERROR);
  return ERR_PTR(err);
 }

 dst = xfrm_bundle_create(pols[0], xfrm, err, fl, dst_orig);
 if (IS_ERR(dst)) {
  XFRM_INC_STATS(net, LINUX_MIB_XFRMOUTBUNDLEGENERROR);
  return ERR_CAST(dst);
 }

 xdst = (struct xfrm_dst *)dst;
 xdst->num_xfrms = err;
 if (num_pols > 1)
  err = xfrm_dst_update_parent(dst, &pols[1]->selector);
 else
  err = xfrm_dst_update_origin(dst, fl);
 if (unlikely(err)) {
  dst_free(dst);
  XFRM_INC_STATS(net, LINUX_MIB_XFRMOUTBUNDLECHECKERROR);
  return ERR_PTR(err);
 }

 xdst->num_pols = num_pols;
 memcpy(xdst->pols, pols, sizeof(struct xfrm_policy*) * num_pols);
 xdst->policy_genid = atomic_read(&pols[0]->genid);

 return xdst;
}

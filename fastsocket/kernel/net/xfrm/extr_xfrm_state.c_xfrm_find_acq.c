
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfrm_address_t ;
typedef int u8 ;
typedef int u32 ;
struct xfrm_state {int dummy; } ;
struct xfrm_mark {int dummy; } ;
struct net {int dummy; } ;


 struct xfrm_state* __find_acq_core (struct net*,struct xfrm_mark*,unsigned short,int ,int ,int ,int *,int *,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int xfrm_state_lock ;

struct xfrm_state *
xfrm_find_acq(struct net *net, struct xfrm_mark *mark, u8 mode, u32 reqid, u8 proto,
       xfrm_address_t *daddr, xfrm_address_t *saddr,
       int create, unsigned short family)
{
 struct xfrm_state *x;

 spin_lock_bh(&xfrm_state_lock);
 x = __find_acq_core(net, mark, family, mode, reqid, proto, daddr, saddr, create);
 spin_unlock_bh(&xfrm_state_lock);

 return x;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfrm_address_t ;
typedef int u8 ;
typedef int u32 ;
struct xfrm_state {int dummy; } ;
struct net {int dummy; } ;


 struct xfrm_state* __xfrm_state_lookup_byaddr (struct net*,int ,int *,int *,int ,unsigned short) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int xfrm_state_lock ;

struct xfrm_state *
xfrm_state_lookup_byaddr(struct net *net, u32 mark,
    xfrm_address_t *daddr, xfrm_address_t *saddr,
    u8 proto, unsigned short family)
{
 struct xfrm_state *x;

 spin_lock_bh(&xfrm_state_lock);
 x = __xfrm_state_lookup_byaddr(net, mark, daddr, saddr, proto, family);
 spin_unlock_bh(&xfrm_state_lock);
 return x;
}

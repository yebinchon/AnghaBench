
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfrm_address_t ;
typedef int u8 ;
struct xfrm_state {int dummy; } ;
struct net {int dummy; } ;
typedef int __be32 ;


 int DUMMY_MARK ;
 struct xfrm_state* __xfrm_state_lookup (struct net*,int ,int *,int ,int ,unsigned short) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int xfrm_state_lock ;

struct xfrm_state *
xfrm_state_lookup(struct net *net, xfrm_address_t *daddr, __be32 spi,
    u8 proto, unsigned short family)
{
 struct xfrm_state *x;

 spin_lock_bh(&xfrm_state_lock);
 x = __xfrm_state_lookup(net, DUMMY_MARK, daddr, spi, proto, family);
 spin_unlock_bh(&xfrm_state_lock);
 return x;
}

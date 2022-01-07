
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state {int dummy; } ;


 int __xfrm_state_bump_genids (struct xfrm_state*) ;
 int __xfrm_state_insert (struct xfrm_state*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int xfrm_state_lock ;

void xfrm_state_insert(struct xfrm_state *x)
{
 spin_lock_bh(&xfrm_state_lock);
 __xfrm_state_bump_genids(x);
 __xfrm_state_insert(x);
 spin_unlock_bh(&xfrm_state_lock);
}

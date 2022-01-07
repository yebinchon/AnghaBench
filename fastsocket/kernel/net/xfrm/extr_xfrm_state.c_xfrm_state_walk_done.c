
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state_walk {int all; } ;


 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int xfrm_state_lock ;

void xfrm_state_walk_done(struct xfrm_state_walk *walk)
{
 if (list_empty(&walk->all))
  return;

 spin_lock_bh(&xfrm_state_lock);
 list_del(&walk->all);
 spin_unlock_bh(&xfrm_state_lock);
}

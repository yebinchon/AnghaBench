
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state {int lock; } ;


 int __xfrm_state_delete (struct xfrm_state*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int xfrm_state_delete(struct xfrm_state *x)
{
 int err;

 spin_lock_bh(&x->lock);
 err = __xfrm_state_delete(x);
 spin_unlock_bh(&x->lock);

 return err;
}

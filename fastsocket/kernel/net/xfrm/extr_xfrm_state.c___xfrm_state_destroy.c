
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; } ;
struct xfrm_state {int gclist; TYPE_1__ km; } ;
struct TYPE_4__ {int state_gc_work; int state_gc_list; } ;
struct net {TYPE_2__ xfrm; } ;


 int WARN_ON (int) ;
 scalar_t__ XFRM_STATE_DEAD ;
 int hlist_add_head (int *,int *) ;
 int schedule_work (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int xfrm_state_gc_lock ;
 struct net* xs_net (struct xfrm_state*) ;

void __xfrm_state_destroy(struct xfrm_state *x)
{
 struct net *net = xs_net(x);

 WARN_ON(x->km.state != XFRM_STATE_DEAD);

 spin_lock_bh(&xfrm_state_gc_lock);
 hlist_add_head(&x->gclist, &net->xfrm.state_gc_list);
 spin_unlock_bh(&xfrm_state_gc_lock);
 schedule_work(&net->xfrm.state_gc_work);
}

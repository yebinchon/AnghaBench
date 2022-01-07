
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state; } ;
struct xfrm_state {int lock; int xflags; TYPE_1__ km; } ;


 int XFRM_REPLAY_TIMEOUT ;
 scalar_t__ XFRM_STATE_VALID ;
 int XFRM_TIME_DEFER ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ xfrm_aevent_is_on (int ) ;
 int xfrm_replay_notify (struct xfrm_state*,int ) ;
 int xs_net (struct xfrm_state*) ;

__attribute__((used)) static void xfrm_replay_timer_handler(unsigned long data)
{
 struct xfrm_state *x = (struct xfrm_state*)data;

 spin_lock(&x->lock);

 if (x->km.state == XFRM_STATE_VALID) {
  if (xfrm_aevent_is_on(xs_net(x)))
   xfrm_replay_notify(x, XFRM_REPLAY_TIMEOUT);
  else
   x->xflags |= XFRM_TIME_DEFER;
 }

 spin_unlock(&x->lock);
}

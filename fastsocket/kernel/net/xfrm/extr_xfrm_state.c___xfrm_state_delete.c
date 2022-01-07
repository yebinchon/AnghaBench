
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ spi; } ;
struct TYPE_6__ {scalar_t__ state; int all; } ;
struct xfrm_state {int byspi; TYPE_1__ id; int bysrc; int bydst; TYPE_3__ km; } ;
struct TYPE_5__ {int state_num; } ;
struct net {TYPE_2__ xfrm; } ;


 int ESRCH ;
 scalar_t__ XFRM_STATE_DEAD ;
 int hlist_del (int *) ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int xfrm_state_lock ;
 int xfrm_state_put (struct xfrm_state*) ;
 struct net* xs_net (struct xfrm_state*) ;

int __xfrm_state_delete(struct xfrm_state *x)
{
 struct net *net = xs_net(x);
 int err = -ESRCH;

 if (x->km.state != XFRM_STATE_DEAD) {
  x->km.state = XFRM_STATE_DEAD;
  spin_lock(&xfrm_state_lock);
  list_del(&x->km.all);
  hlist_del(&x->bydst);
  hlist_del(&x->bysrc);
  if (x->id.spi)
   hlist_del(&x->byspi);
  net->xfrm.state_num--;
  spin_unlock(&xfrm_state_lock);





  xfrm_state_put(x);
  err = 0;
 }

 return err;
}

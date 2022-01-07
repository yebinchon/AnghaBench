
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int header_len; } ;
struct TYPE_5__ {scalar_t__ state; } ;
struct xfrm_state {int lock; TYPE_1__ props; TYPE_3__* type; TYPE_2__ km; } ;
struct TYPE_6__ {int (* get_mtu ) (struct xfrm_state*,int) ;} ;


 scalar_t__ XFRM_STATE_VALID ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct xfrm_state*,int) ;

int xfrm_state_mtu(struct xfrm_state *x, int mtu)
{
 int res;

 spin_lock_bh(&x->lock);
 if (x->km.state == XFRM_STATE_VALID &&
     x->type && x->type->get_mtu)
  res = x->type->get_mtu(x, mtu);
 else
  res = mtu - x->props.header_len;
 spin_unlock_bh(&x->lock);
 return res;
}

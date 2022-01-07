
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int all; } ;
struct xfrm_policy_walk {TYPE_1__ walk; } ;


 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;
 int xfrm_policy_lock ;

void xfrm_policy_walk_done(struct xfrm_policy_walk *walk)
{
 if (list_empty(&walk->walk.all))
  return;

 write_lock_bh(&xfrm_policy_lock);
 list_del(&walk->walk.all);
 write_unlock_bh(&xfrm_policy_lock);
}

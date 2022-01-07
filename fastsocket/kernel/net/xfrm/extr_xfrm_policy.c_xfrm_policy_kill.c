
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dead; } ;
struct xfrm_policy {int timer; int genid; TYPE_1__ walk; } ;


 int atomic_inc (int *) ;
 scalar_t__ del_timer (int *) ;
 int xfrm_pol_put (struct xfrm_policy*) ;

__attribute__((used)) static void xfrm_policy_kill(struct xfrm_policy *policy)
{
 policy->walk.dead = 1;

 atomic_inc(&policy->genid);

 if (del_timer(&policy->timer))
  xfrm_pol_put(policy);

 xfrm_pol_put(policy);
}

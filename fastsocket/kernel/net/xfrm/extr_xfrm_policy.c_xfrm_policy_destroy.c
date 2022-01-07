
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dead; } ;
struct xfrm_policy {int security; int timer; TYPE_1__ walk; } ;


 int BUG () ;
 int BUG_ON (int) ;
 scalar_t__ del_timer (int *) ;
 int kfree (struct xfrm_policy*) ;
 int security_xfrm_policy_free (int ) ;

void xfrm_policy_destroy(struct xfrm_policy *policy)
{
 BUG_ON(!policy->walk.dead);

 if (del_timer(&policy->timer))
  BUG();

 security_xfrm_policy_free(policy->security);
 kfree(policy);
}

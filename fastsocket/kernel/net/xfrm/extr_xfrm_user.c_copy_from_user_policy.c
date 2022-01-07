
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int family; } ;
struct xfrm_userpolicy_info {TYPE_1__ sel; int flags; int action; TYPE_1__ lft; int index; int priority; } ;
struct xfrm_policy {int family; int flags; int action; int lft; int selector; int index; int priority; } ;


 int memcpy (int *,TYPE_1__*,int) ;

__attribute__((used)) static void copy_from_user_policy(struct xfrm_policy *xp, struct xfrm_userpolicy_info *p)
{
 xp->priority = p->priority;
 xp->index = p->index;
 memcpy(&xp->selector, &p->sel, sizeof(xp->selector));
 memcpy(&xp->lft, &p->lft, sizeof(xp->lft));
 xp->action = p->action;
 xp->flags = p->flags;
 xp->family = p->sel.family;

}

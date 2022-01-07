
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int family; } ;
struct xfrm_userpolicy_info {int dir; int share; int flags; int action; TYPE_1__ sel; int index; int priority; TYPE_1__ curlft; TYPE_1__ lft; } ;
struct xfrm_policy {int flags; int action; int family; int index; int priority; int curlft; int lft; int selector; } ;


 int XFRM_SHARE_ANY ;
 int memcpy (TYPE_1__*,int *,int) ;
 int memset (struct xfrm_userpolicy_info*,int ,int) ;

__attribute__((used)) static void copy_to_user_policy(struct xfrm_policy *xp, struct xfrm_userpolicy_info *p, int dir)
{
 memset(p, 0, sizeof(*p));
 memcpy(&p->sel, &xp->selector, sizeof(p->sel));
 memcpy(&p->lft, &xp->lft, sizeof(p->lft));
 memcpy(&p->curlft, &xp->curlft, sizeof(p->curlft));
 p->priority = xp->priority;
 p->index = xp->index;
 p->sel.family = xp->family;
 p->dir = dir;
 p->action = xp->action;
 p->flags = xp->flags;
 p->share = XFRM_SHARE_ANY;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_tmpl {int dummy; } ;
struct xfrm_policy {int xfrm_nr; int xfrm_vec; int type; int index; int flags; int action; int mark; int curlft; int lft; int security; int selector; } ;


 int GFP_ATOMIC ;
 scalar_t__ XFRM_POLICY_MAX ;
 int __xfrm_policy_link (struct xfrm_policy*,scalar_t__) ;
 int kfree (struct xfrm_policy*) ;
 int memcpy (int ,int ,int) ;
 scalar_t__ security_xfrm_policy_clone (int ,int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;
 int xfrm_pol_put (struct xfrm_policy*) ;
 struct xfrm_policy* xfrm_policy_alloc (int ,int ) ;
 int xfrm_policy_lock ;
 int xp_net (struct xfrm_policy*) ;

__attribute__((used)) static struct xfrm_policy *clone_policy(struct xfrm_policy *old, int dir)
{
 struct xfrm_policy *newp = xfrm_policy_alloc(xp_net(old), GFP_ATOMIC);

 if (newp) {
  newp->selector = old->selector;
  if (security_xfrm_policy_clone(old->security,
            &newp->security)) {
   kfree(newp);
   return ((void*)0);
  }
  newp->lft = old->lft;
  newp->curlft = old->curlft;
  newp->mark = old->mark;
  newp->action = old->action;
  newp->flags = old->flags;
  newp->xfrm_nr = old->xfrm_nr;
  newp->index = old->index;
  newp->type = old->type;
  memcpy(newp->xfrm_vec, old->xfrm_vec,
         newp->xfrm_nr*sizeof(struct xfrm_tmpl));
  write_lock_bh(&xfrm_policy_lock);
  __xfrm_policy_link(newp, XFRM_POLICY_MAX+dir);
  write_unlock_bh(&xfrm_policy_lock);
  xfrm_pol_put(newp);
 }
 return newp;
}

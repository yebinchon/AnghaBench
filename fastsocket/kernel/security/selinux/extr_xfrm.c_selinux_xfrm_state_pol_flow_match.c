
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct xfrm_state {TYPE_1__* security; } ;
struct xfrm_policy {int security; } ;
struct flowi {scalar_t__ secid; } ;
struct TYPE_2__ {scalar_t__ ctx_sid; } ;


 int ASSOCIATION__SENDTO ;
 int SECCLASS_ASSOCIATION ;
 scalar_t__ avc_has_perm (scalar_t__,scalar_t__,int ,int ,int *) ;
 int selinux_authorizable_xfrm (struct xfrm_state*) ;

int selinux_xfrm_state_pol_flow_match(struct xfrm_state *x, struct xfrm_policy *xp,
   struct flowi *fl)
{
 u32 state_sid;
 int rc;

 if (!xp->security)
  if (x->security)

   return 0;
  else

   return 1;
 else
  if (!x->security)

   return 0;
  else
   if (!selinux_authorizable_xfrm(x))

    return 0;

 state_sid = x->security->ctx_sid;

 if (fl->secid != state_sid)
  return 0;

 rc = avc_has_perm(fl->secid, state_sid, SECCLASS_ASSOCIATION,
     ASSOCIATION__SENDTO,
     ((void*)0))? 0:1;
 return rc;
}

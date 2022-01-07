
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xfrm_address_t ;
struct TYPE_6__ {scalar_t__ family; } ;
struct TYPE_5__ {scalar_t__ state; scalar_t__ dying; } ;
struct TYPE_4__ {scalar_t__ add_time; } ;
struct xfrm_state {TYPE_3__ sel; TYPE_2__ km; TYPE_1__ curlft; } ;
struct xfrm_policy {int dummy; } ;
struct flowi {int dummy; } ;


 int ESRCH ;
 scalar_t__ XFRM_STATE_ACQ ;
 scalar_t__ XFRM_STATE_ERROR ;
 scalar_t__ XFRM_STATE_EXPIRED ;
 scalar_t__ XFRM_STATE_VALID ;
 scalar_t__ security_xfrm_state_pol_flow_match (struct xfrm_state*,struct xfrm_policy*,struct flowi*) ;
 scalar_t__ xfrm_selector_match (TYPE_3__*,struct flowi*,scalar_t__) ;

__attribute__((used)) static void xfrm_state_look_at(struct xfrm_policy *pol, struct xfrm_state *x,
          struct flowi *fl, unsigned short family,
          xfrm_address_t *daddr, xfrm_address_t *saddr,
          struct xfrm_state **best, int *acq_in_progress,
          int *error)
{
 if (x->km.state == XFRM_STATE_VALID) {
  if ((x->sel.family &&
       !xfrm_selector_match(&x->sel, fl, x->sel.family)) ||
      !security_xfrm_state_pol_flow_match(x, pol, fl))
   return;

  if (!*best ||
      (*best)->km.dying > x->km.dying ||
      ((*best)->km.dying == x->km.dying &&
       (*best)->curlft.add_time < x->curlft.add_time))
   *best = x;
 } else if (x->km.state == XFRM_STATE_ACQ) {
  *acq_in_progress = 1;
 } else if (x->km.state == XFRM_STATE_ERROR ||
     x->km.state == XFRM_STATE_EXPIRED) {
  if (xfrm_selector_match(&x->sel, fl, x->sel.family) &&
      security_xfrm_state_pol_flow_match(x, pol, fl))
   *error = -ESRCH;
 }
}

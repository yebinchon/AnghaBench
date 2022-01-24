#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct xfrm_tmpl {int dummy; } ;
struct xfrm_policy {int xfrm_nr; int /*<<< orphan*/  xfrm_vec; int /*<<< orphan*/  type; int /*<<< orphan*/  index; int /*<<< orphan*/  flags; int /*<<< orphan*/  action; int /*<<< orphan*/  mark; int /*<<< orphan*/  curlft; int /*<<< orphan*/  lft; int /*<<< orphan*/  security; int /*<<< orphan*/  selector; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ XFRM_POLICY_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct xfrm_policy*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct xfrm_policy*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct xfrm_policy*) ; 
 struct xfrm_policy* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfrm_policy_lock ; 
 int /*<<< orphan*/  FUNC8 (struct xfrm_policy*) ; 

__attribute__((used)) static struct xfrm_policy *FUNC9(struct xfrm_policy *old, int dir)
{
	struct xfrm_policy *newp = FUNC7(FUNC8(old), GFP_ATOMIC);

	if (newp) {
		newp->selector = old->selector;
		if (FUNC3(old->security,
					       &newp->security)) {
			FUNC1(newp);
			return NULL;  /* ENOMEM */
		}
		newp->lft = old->lft;
		newp->curlft = old->curlft;
		newp->mark = old->mark;
		newp->action = old->action;
		newp->flags = old->flags;
		newp->xfrm_nr = old->xfrm_nr;
		newp->index = old->index;
		newp->type = old->type;
		FUNC2(newp->xfrm_vec, old->xfrm_vec,
		       newp->xfrm_nr*sizeof(struct xfrm_tmpl));
		FUNC4(&xfrm_policy_lock);
		FUNC0(newp, XFRM_POLICY_MAX+dir);
		FUNC5(&xfrm_policy_lock);
		FUNC6(newp);
	}
	return newp;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  add_time; } ;
struct xfrm_policy {scalar_t__ type; int /*<<< orphan*/  index; TYPE_1__ curlft; } ;
struct sock {struct xfrm_policy** sk_policy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ XFRM_POLICY_MAX ; 
 scalar_t__ XFRM_POLICY_TYPE_MAIN ; 
 int /*<<< orphan*/  FUNC0 (struct xfrm_policy*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct xfrm_policy*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct xfrm_policy*) ; 
 int /*<<< orphan*/  xfrm_policy_lock ; 
 struct net* FUNC7 (struct xfrm_policy*) ; 

int FUNC8(struct sock *sk, int dir, struct xfrm_policy *pol)
{
	struct net *net = FUNC7(pol);
	struct xfrm_policy *old_pol;

#ifdef CONFIG_XFRM_SUB_POLICY
	if (pol && pol->type != XFRM_POLICY_TYPE_MAIN)
		return -EINVAL;
#endif

	FUNC3(&xfrm_policy_lock);
	old_pol = sk->sk_policy[dir];
	sk->sk_policy[dir] = pol;
	if (pol) {
		pol->curlft.add_time = FUNC2();
		pol->index = FUNC5(net, XFRM_POLICY_MAX+dir);
		FUNC0(pol, XFRM_POLICY_MAX+dir);
	}
	if (old_pol)
		/* Unlinking succeeds always. This is the only function
		 * allowed to delete or replace socket policy.
		 */
		FUNC1(old_pol, XFRM_POLICY_MAX+dir);
	FUNC4(&xfrm_policy_lock);

	if (old_pol) {
		FUNC6(old_pol);
	}
	return 0;
}
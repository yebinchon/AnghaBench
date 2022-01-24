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
struct TYPE_2__ {int m; int v; } ;
struct xfrm_policy {int /*<<< orphan*/  security; TYPE_1__ mark; int /*<<< orphan*/  selector; } ;
struct sock {int sk_mark; int /*<<< orphan*/  sk_family; struct xfrm_policy** sk_policy; } ;
struct flowi {int /*<<< orphan*/  secid; } ;

/* Variables and functions */
 struct xfrm_policy* FUNC0 (int) ; 
 int ESRCH ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xfrm_policy*) ; 
 int /*<<< orphan*/  xfrm_policy_lock ; 
 int FUNC6 (int /*<<< orphan*/ *,struct flowi*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct xfrm_policy *FUNC7(struct sock *sk, int dir, struct flowi *fl)
{
	struct xfrm_policy *pol;

	FUNC2(&xfrm_policy_lock);
	if ((pol = sk->sk_policy[dir]) != NULL) {
		int match = FUNC6(&pol->selector, fl,
						sk->sk_family);
		int err = 0;

		if (match) {
			if ((sk->sk_mark & pol->mark.m) != pol->mark.v) {
				pol = NULL;
				goto out;
			}
			err = FUNC4(pol->security,
						      fl->secid,
						      FUNC1(dir));
			if (!err)
				FUNC5(pol);
			else if (err == -ESRCH)
				pol = NULL;
			else
				pol = FUNC0(err);
		} else
			pol = NULL;
	}
out:
	FUNC3(&xfrm_policy_lock);
	return pol;
}
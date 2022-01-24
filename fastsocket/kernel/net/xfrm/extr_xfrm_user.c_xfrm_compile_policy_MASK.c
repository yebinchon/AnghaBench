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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  family; } ;
struct xfrm_userpolicy_info {int dir; TYPE_1__ sel; } ;
struct xfrm_user_tmpl {int dummy; } ;
struct xfrm_policy {int /*<<< orphan*/  type; } ;
struct sock {int sk_family; } ;
struct net {int dummy; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int EINVAL ; 
 int ENOBUFS ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IPV6_XFRM_POLICY ; 
 int IP_XFRM_POLICY ; 
 int XFRM_POLICY_OUT ; 
 int /*<<< orphan*/  XFRM_POLICY_TYPE_MAIN ; 
 int /*<<< orphan*/  FUNC0 (struct xfrm_policy*,struct xfrm_userpolicy_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct xfrm_policy*,struct xfrm_user_tmpl*,int) ; 
 struct net* FUNC2 (struct sock*) ; 
 scalar_t__ FUNC3 (int,struct xfrm_user_tmpl*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct xfrm_userpolicy_info*) ; 
 struct xfrm_policy* FUNC5 (struct net*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct xfrm_policy *FUNC6(struct sock *sk, int opt,
					       u8 *data, int len, int *dir)
{
	struct net *net = FUNC2(sk);
	struct xfrm_userpolicy_info *p = (struct xfrm_userpolicy_info *)data;
	struct xfrm_user_tmpl *ut = (struct xfrm_user_tmpl *) (p + 1);
	struct xfrm_policy *xp;
	int nr;

	switch (sk->sk_family) {
	case AF_INET:
		if (opt != IP_XFRM_POLICY) {
			*dir = -EOPNOTSUPP;
			return NULL;
		}
		break;
#if defined(CONFIG_IPV6) || defined(CONFIG_IPV6_MODULE)
	case AF_INET6:
		if (opt != IPV6_XFRM_POLICY) {
			*dir = -EOPNOTSUPP;
			return NULL;
		}
		break;
#endif
	default:
		*dir = -EINVAL;
		return NULL;
	}

	*dir = -EINVAL;

	if (len < sizeof(*p) ||
	    FUNC4(p))
		return NULL;

	nr = ((len - sizeof(*p)) / sizeof(*ut));
	if (FUNC3(nr, ut, p->sel.family))
		return NULL;

	if (p->dir > XFRM_POLICY_OUT)
		return NULL;

	xp = FUNC5(net, GFP_KERNEL);
	if (xp == NULL) {
		*dir = -ENOBUFS;
		return NULL;
	}

	FUNC0(xp, p);
	xp->type = XFRM_POLICY_TYPE_MAIN;
	FUNC1(xp, ut, nr);

	*dir = p->dir;

	return xp;
}
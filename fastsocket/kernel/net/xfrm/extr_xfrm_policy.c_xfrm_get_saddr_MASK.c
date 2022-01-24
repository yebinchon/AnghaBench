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
typedef  int /*<<< orphan*/  xfrm_address_t ;
struct xfrm_policy_afinfo {int (* get_saddr ) (struct net*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
struct net {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct net*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct xfrm_policy_afinfo* FUNC2 (unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (struct xfrm_policy_afinfo*) ; 

__attribute__((used)) static int
FUNC4(struct net *net, xfrm_address_t *local, xfrm_address_t *remote,
	       unsigned short family)
{
	int err;
	struct xfrm_policy_afinfo *afinfo = FUNC2(family);

	if (FUNC1(afinfo == NULL))
		return -EINVAL;
	err = afinfo->get_saddr(net, local, remote);
	FUNC3(afinfo);
	return err;
}
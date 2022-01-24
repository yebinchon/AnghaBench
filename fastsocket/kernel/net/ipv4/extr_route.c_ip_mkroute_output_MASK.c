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
struct rtable {int dummy; } ;
struct net_device {int dummy; } ;
struct flowi {int /*<<< orphan*/  oif; int /*<<< orphan*/  fl4_src; int /*<<< orphan*/  fl4_dst; } ;
struct fib_result {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rtable**,struct fib_result*,struct flowi const*,struct flowi const*,struct net_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned int,struct rtable*,struct rtable**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct rtable **rp,
			     struct fib_result *res,
			     const struct flowi *fl,
			     const struct flowi *oldflp,
			     struct net_device *dev_out,
			     unsigned flags)
{
	struct rtable *rth = NULL;
	int err = FUNC0(&rth, res, fl, oldflp, dev_out, flags);
	unsigned hash;
	if (err == 0) {
		hash = FUNC3(oldflp->fl4_dst, oldflp->fl4_src, oldflp->oif,
			       FUNC2(FUNC1(dev_out)));
		err = FUNC4(hash, rth, rp, NULL);
	}

	return err;
}
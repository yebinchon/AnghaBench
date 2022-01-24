#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pneigh_entry {int flags; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int NTF_ROUTER ; 
 struct pneigh_entry* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,void const*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 TYPE_1__ nd_tbl ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(const void *pkey,
			    struct net_device *dev)
{
	struct pneigh_entry *n;
	int ret = -1;

	FUNC2(&nd_tbl.lock);
	n = FUNC0(&nd_tbl, FUNC1(dev), pkey, dev);
	if (n)
		ret = !!(n->flags & NTF_ROUTER);
	FUNC3(&nd_tbl.lock);

	return ret;
}
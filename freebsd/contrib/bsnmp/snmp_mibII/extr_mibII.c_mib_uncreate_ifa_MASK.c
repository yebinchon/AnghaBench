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
struct mibifa {int /*<<< orphan*/  inaddr; int /*<<< orphan*/  ifindex; } ;
struct mibif {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mibifa*) ; 
 struct mibif* FUNC1 (int /*<<< orphan*/ ) ; 
 int mib_iflist_bad ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct mibifa *ifa)
{
	struct mibif *ifp;

	if ((ifp = FUNC1(ifa->ifindex)) == NULL) {
		/* ups. */
		mib_iflist_bad = 1;
		return;
	}
	if (FUNC2(ifp->name, ifa->inaddr)) {
		/* ups. */
		mib_iflist_bad = 1;
		return;
	}

	FUNC0(ifa);
}
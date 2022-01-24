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
struct mibifa {int /*<<< orphan*/  flags; int /*<<< orphan*/  inaddr; int /*<<< orphan*/  ifindex; } ;
struct mibif {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  MIBIFA_DESTROYED ; 
 struct mibif* FUNC0 (int /*<<< orphan*/ ) ; 
 int mib_iflist_bad ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

int
FUNC3(struct mibifa *ifa)
{
	struct mibif *ifp;

	if ((ifp = FUNC0(ifa->ifindex)) == NULL) {
		/* ups. */
		mib_iflist_bad = 1;
		return (-1);
	}
	if (FUNC1(ifp->name, ifa->inaddr)) {
		/* ups. */
		FUNC2(LOG_ERR, "SIOCDIFADDR: %m");
		mib_iflist_bad = 1;
		return (-1);
	}
	ifa->flags |= MIBIFA_DESTROYED;
	return (0);
}
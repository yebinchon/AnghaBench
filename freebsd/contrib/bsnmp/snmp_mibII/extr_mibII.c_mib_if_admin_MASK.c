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
struct mibif {int /*<<< orphan*/  name; } ;
struct ifreq {int /*<<< orphan*/  ifr_flags; int /*<<< orphan*/  ifr_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_UP ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  SIOCGIFFLAGS ; 
 int /*<<< orphan*/  SIOCSIFFLAGS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC1 (struct mibif*) ; 
 int /*<<< orphan*/  mib_netsock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int
FUNC4(struct mibif *ifp, int up)
{
	struct ifreq ifr;

	FUNC2(ifr.ifr_name, ifp->name, sizeof(ifr.ifr_name));
	if (FUNC0(mib_netsock, SIOCGIFFLAGS, &ifr) == -1) {
		FUNC3(LOG_ERR, "SIOCGIFFLAGS(%s): %m", ifp->name);
		return (-1);
	}
	if (up)
		ifr.ifr_flags |= IFF_UP;
	else
		ifr.ifr_flags &= ~IFF_UP;
	if (FUNC0(mib_netsock, SIOCSIFFLAGS, &ifr) == -1) {
		FUNC3(LOG_ERR, "SIOCSIFFLAGS(%s): %m", ifp->name);
		return (-1);
	}

	(void)FUNC1(ifp);

	return (0);
}
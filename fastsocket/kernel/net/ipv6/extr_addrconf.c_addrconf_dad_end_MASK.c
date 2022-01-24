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
struct inet6_ifaddr {scalar_t__ dead; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ INET6_IFADDR_STATE_DAD ; 
 scalar_t__ INET6_IFADDR_STATE_POSTDAD ; 
 int /*<<< orphan*/  ifa_state_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct inet6_ifaddr *ifp)
{
	int err = -ENOENT;

	FUNC0(&ifa_state_lock);
	if (ifp->dead == INET6_IFADDR_STATE_DAD) {
		ifp->dead = INET6_IFADDR_STATE_POSTDAD;
		err = 0;
	}
	FUNC1(&ifa_state_lock);

	return err;
}
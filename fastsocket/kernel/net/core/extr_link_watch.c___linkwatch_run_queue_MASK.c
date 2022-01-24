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
struct net_device {int flags; int /*<<< orphan*/  state; struct net_device* link_watch_next; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 int IFF_UP ; 
 int /*<<< orphan*/  LW_URGENT ; 
 int /*<<< orphan*/  __LINK_STATE_LINKWATCH_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  linkwatch_flags ; 
 scalar_t__ linkwatch_nextevent ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 struct net_device* lweventlist ; 
 int /*<<< orphan*/  lweventlist_lock ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC14(int urgent_only)
{
	struct net_device *next;

	/*
	 * Limit the number of linkwatch events to one
	 * per second so that a runaway driver does not
	 * cause a storm of messages on the netlink
	 * socket.  This limit does not apply to up events
	 * while the device qdisc is down.
	 */
	if (!urgent_only)
		linkwatch_nextevent = jiffies + HZ;
	/* Limit wrap-around effect on delay. */
	else if (FUNC13(linkwatch_nextevent, jiffies + HZ))
		linkwatch_nextevent = jiffies;

	FUNC0(LW_URGENT, &linkwatch_flags);

	FUNC11(&lweventlist_lock);
	next = lweventlist;
	lweventlist = NULL;
	FUNC12(&lweventlist_lock);

	while (next) {
		struct net_device *dev = next;

		next = dev->link_watch_next;

		if (urgent_only && !FUNC6(dev)) {
			FUNC4(dev);
			continue;
		}

		/*
		 * Make sure the above read is complete since it can be
		 * rewritten as soon as we clear the bit below.
		 */
		FUNC10();

		/* We are about to handle this device,
		 * so new events can be accepted
		 */
		FUNC0(__LINK_STATE_LINKWATCH_PENDING, &dev->state);

		FUNC9(dev);
		if (dev->flags & IFF_UP) {
			if (FUNC8(dev))
				FUNC1(dev);
			else
				FUNC2(dev);

			FUNC7(dev);
		}

		FUNC3(dev);
	}

	if (lweventlist)
		FUNC5(0);
}
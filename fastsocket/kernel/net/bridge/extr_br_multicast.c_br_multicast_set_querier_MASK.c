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
struct net_bridge {unsigned long multicast_querier; int /*<<< orphan*/  multicast_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct net_bridge *br, unsigned long val)
{
	val = !!val;

	FUNC1(&br->multicast_lock);
	if (br->multicast_querier == val)
		goto unlock;

	br->multicast_querier = val;
	if (val)
		FUNC0(br);

unlock:
	FUNC2(&br->multicast_lock);

	return 0;
}
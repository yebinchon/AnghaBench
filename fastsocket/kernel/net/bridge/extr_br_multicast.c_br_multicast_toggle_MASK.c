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
struct net_bridge {int multicast_disabled; int /*<<< orphan*/  multicast_lock; int /*<<< orphan*/  hash_elasticity; TYPE_1__* mdb; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  max; scalar_t__ old; } ;

/* Variables and functions */
 int EEXIST ; 
 int FUNC0 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct net_bridge *br, unsigned long val)
{
	int err = 0;

	FUNC3(&br->multicast_lock);
	if (!FUNC2(br->dev))
		goto unlock;

	if (br->multicast_disabled == !val)
		goto unlock;

	br->multicast_disabled = !val;
	if (br->multicast_disabled)
		goto unlock;

	if (br->mdb) {
		if (br->mdb->old) {
			err = -EEXIST;
rollback:
			br->multicast_disabled = !!val;
			goto unlock;
		}

		err = FUNC0(&br->mdb, br->mdb->max,
				    br->hash_elasticity);
		if (err)
			goto rollback;
	}

	FUNC1(br);

unlock:
	FUNC4(&br->multicast_lock);

	return err;
}
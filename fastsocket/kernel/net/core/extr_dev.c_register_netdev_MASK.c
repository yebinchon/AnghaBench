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
struct net_device {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char) ; 

int FUNC5(struct net_device *dev)
{
	int err;

	FUNC2();

	/*
	 * If the name is a format string the caller wants us to do a
	 * name allocation.
	 */
	if (FUNC4(dev->name, '%')) {
		err = FUNC0(dev, dev->name);
		if (err < 0)
			goto out;
	}

	err = FUNC1(dev);
out:
	FUNC3();
	return err;
}
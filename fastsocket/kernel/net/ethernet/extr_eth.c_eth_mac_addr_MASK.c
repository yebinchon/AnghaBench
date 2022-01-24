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
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,void*) ; 
 int FUNC1 (struct net_device*,void*) ; 

int FUNC2(struct net_device *dev, void *p)
{
	int ret;

	ret = FUNC1(dev, p);
	if (ret < 0)
		return ret;
	FUNC0(dev, p);
	return 0;
}
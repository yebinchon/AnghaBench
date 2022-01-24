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
struct uwb_dev {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct uwb_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct uwb_dev*) ; 

__attribute__((used)) static
int FUNC2(struct device *dev, void *__target_uwb_dev)
{
	struct uwb_dev *target_uwb_dev = __target_uwb_dev;
	struct uwb_dev *uwb_dev = FUNC0(dev);
	if (uwb_dev == target_uwb_dev) {
		FUNC1(uwb_dev);
		return 1;
	} else
		return 0;
}
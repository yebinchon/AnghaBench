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
struct ep_device {int /*<<< orphan*/  desc; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 struct ep_device* FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				 struct device_attribute *attr, char *buf)
{
	struct ep_device *ep = FUNC1(dev);
	char *direction;

	if (FUNC3(ep->desc))
		direction = "both";
	else if (FUNC2(ep->desc))
		direction = "in";
	else
		direction = "out";
	return FUNC0(buf, "%s\n", direction);
}
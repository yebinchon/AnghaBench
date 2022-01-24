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
struct uio_device {int /*<<< orphan*/  event; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct uio_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,unsigned int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
			  struct device_attribute *attr, char *buf)
{
	struct uio_device *idev = FUNC1(dev);
	if (idev)
		return FUNC2(buf, "%u\n",
				(unsigned int)FUNC0(&idev->event));
	else
		return -ENODEV;
}
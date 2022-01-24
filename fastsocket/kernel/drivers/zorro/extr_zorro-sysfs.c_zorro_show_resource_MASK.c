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
struct zorro_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 struct zorro_dev* FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (struct zorro_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct zorro_dev*) ; 
 scalar_t__ FUNC4 (struct zorro_dev*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct zorro_dev *z = FUNC1(dev);

	return FUNC0(buf, "0x%08lx 0x%08lx 0x%08lx\n",
		       (unsigned long)FUNC4(z),
		       (unsigned long)FUNC2(z),
		       FUNC3(z));
}
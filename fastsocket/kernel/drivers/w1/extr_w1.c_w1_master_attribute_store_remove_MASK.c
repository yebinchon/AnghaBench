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
struct w1_slave {int dummy; } ;
struct w1_reg_num {scalar_t__ id; int /*<<< orphan*/  family; } ;
struct w1_master {int /*<<< orphan*/  mutex; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,unsigned long long) ; 
 struct w1_master* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct device*,char const*,size_t,struct w1_reg_num*) ; 
 int /*<<< orphan*/  FUNC5 (struct w1_slave*) ; 
 struct w1_slave* FUNC6 (struct w1_master*,struct w1_reg_num*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
						struct device_attribute *attr,
						const char *buf, size_t count)
{
	struct w1_master *md = FUNC1(dev);
	struct w1_reg_num rn;
	struct w1_slave *sl;
	ssize_t result = count;

	if (FUNC4(dev, buf, count, &rn))
		return -EINVAL;

	FUNC2(&md->mutex);
	sl = FUNC6(md, &rn);
	if (sl) {
		FUNC5(sl);
	} else {
		FUNC0(dev, "Device %02x-%012llx doesn't exists\n", rn.family,
			(unsigned long long)rn.id);
		result = -EINVAL;
	}
	FUNC3(&md->mutex);

	return result;
}
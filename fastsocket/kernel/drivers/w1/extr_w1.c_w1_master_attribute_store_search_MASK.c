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
struct w1_master {long search_count; int /*<<< orphan*/  thread; int /*<<< orphan*/  mutex; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 struct w1_master* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (char const*,int /*<<< orphan*/ ,long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC5(struct device * dev,
						struct device_attribute *attr,
						const char * buf, size_t count)
{
	long tmp;
	struct w1_master *md = FUNC0(dev);

	if (FUNC3(buf, 0, &tmp) == -EINVAL)
		return -EINVAL;

	FUNC1(&md->mutex);
	md->search_count = tmp;
	FUNC2(&md->mutex);
	FUNC4(md->thread);

	return count;
}
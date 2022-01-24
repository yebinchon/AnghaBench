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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct channel_info {int /*<<< orphan*/  sys_group_size; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 struct channel_info* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,unsigned long*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				struct device_attribute *attr,
				const char *buf, size_t count)
{
	struct channel_info *channel = FUNC1(dev);
	unsigned long group_size;

	FUNC2(buf, "%lu", &group_size);
	FUNC0(&channel->sys_group_size, group_size);

	return count;
}
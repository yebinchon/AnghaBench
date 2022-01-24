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
typedef  int u8 ;
struct net_bridge {int* group_addr; int /*<<< orphan*/  lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 size_t EINVAL ; 
 size_t EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*,char*,int*,int*,int*,int*,int*,int*) ; 
 struct net_bridge* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *d,
				struct device_attribute *attr,
				const char *buf, size_t len)
{
	struct net_bridge *br = FUNC5(d);
	u8 new_addr[6];
	int i;

	if (!FUNC0(CAP_NET_ADMIN))
		return -EPERM;

	if (FUNC4(buf, "%hhx:%hhx:%hhx:%hhx:%hhx:%hhx",
		   &new_addr[0], &new_addr[1], &new_addr[2],
		   &new_addr[3], &new_addr[4], &new_addr[5]) != 6)
		return -EINVAL;

	if (!FUNC1(new_addr))
		return -EINVAL;

	if (new_addr[5] == 1 	/* 802.3x Pause address */
	    || new_addr[5] == 2 /* 802.3ad Slow protocols */
	    || new_addr[5] == 3) /* 802.1X PAE address */
		return -EINVAL;

	FUNC2(&br->lock);
	for (i = 0; i < 6; i++)
		br->group_addr[i] = new_addr[i];
	FUNC3(&br->lock);
	return len;
}
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
struct net_bridge {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 size_t EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct net_bridge* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *d,
			   struct device_attribute *attr,
			   const char *buf, size_t len)
{
	struct net_bridge *br = FUNC2(d);

	if (!FUNC1(CAP_NET_ADMIN))
		return -EPERM;

	FUNC0(br);
	return len;
}
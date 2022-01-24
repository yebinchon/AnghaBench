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
struct net_bridge {unsigned long hello_time; unsigned long bridge_hello_time; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long HZ ; 
 scalar_t__ FUNC0 (struct net_bridge*) ; 
 unsigned long FUNC1 (unsigned long) ; 

__attribute__((used)) static int FUNC2(struct net_bridge *br, unsigned long val)
{
	unsigned long t = FUNC1(val);

	if (t < HZ)
		return -EINVAL;

	br->hello_time = t;
	if (FUNC0(br))
		br->bridge_hello_time = t;
	return 0;
}
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
struct net_device {scalar_t__ ifindex; scalar_t__ iflink; } ;

/* Variables and functions */
 unsigned char IF_OPER_DORMANT ; 
 unsigned char IF_OPER_DOWN ; 
 unsigned char IF_OPER_LOWERLAYERDOWN ; 
 unsigned char IF_OPER_UP ; 
 int /*<<< orphan*/  FUNC0 (struct net_device const*) ; 
 scalar_t__ FUNC1 (struct net_device const*) ; 

__attribute__((used)) static unsigned char FUNC2(const struct net_device *dev)
{
	if (!FUNC0(dev))
		return (dev->ifindex != dev->iflink ?
			IF_OPER_LOWERLAYERDOWN : IF_OPER_DOWN);

	if (FUNC1(dev))
		return IF_OPER_DORMANT;

	return IF_OPER_UP;
}
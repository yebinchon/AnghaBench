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
struct net_device {int dummy; } ;
struct net_bridge {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge*) ; 
 struct net_bridge* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	struct net_bridge *br = FUNC2(dev);

	FUNC1(br);
	FUNC0(br);

	FUNC3(dev);

	return 0;
}
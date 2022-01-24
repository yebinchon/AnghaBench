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
struct vport {int dummy; } ;
struct netdev_vport {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct netdev_vport* FUNC1 (struct vport*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct vport *vport)
{
	struct netdev_vport *netdev_vport = FUNC1(vport);

	FUNC2(netdev_vport->dev);
	FUNC3();
	FUNC0(netdev_vport->dev, -1);

	/* unregister_netdevice() waits for an RCU grace period. */
	FUNC5(netdev_vport->dev);

	FUNC4();
}
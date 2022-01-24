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
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct vport* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct vport*) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	struct vport *vport = FUNC1(dev);

	FUNC2(vport);
	FUNC0(dev);
}
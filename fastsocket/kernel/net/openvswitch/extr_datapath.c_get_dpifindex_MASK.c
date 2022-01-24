#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vport {int dummy; } ;
struct datapath {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  OVSP_LOCAL ; 
 TYPE_2__* FUNC0 (struct vport*) ; 
 struct vport* FUNC1 (struct datapath*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct datapath *dp)
{
	struct vport *local;
	int ifindex;

	FUNC2();

	local = FUNC1(dp, OVSP_LOCAL);
	if (local)
		ifindex = FUNC0(local)->dev->ifindex;
	else
		ifindex = 0;

	FUNC3();

	return ifindex;
}
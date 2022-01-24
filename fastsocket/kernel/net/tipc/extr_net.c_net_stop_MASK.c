#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct TYPE_2__ {int /*<<< orphan*/ * zones; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t tipc_max_zones ; 
 TYPE_1__ tipc_net ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	u32 z_num;

	if (!tipc_net.zones)
		return;

	for (z_num = 1; z_num <= tipc_max_zones; z_num++) {
		FUNC1(tipc_net.zones[z_num]);
	}
	FUNC0(tipc_net.zones);
	tipc_net.zones = NULL;
}
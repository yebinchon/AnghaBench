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
struct ipx_interface {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  ipx_interfaces ; 
 int /*<<< orphan*/  ipx_interfaces_lock ; 
 struct ipx_interface* ipx_primary_net ; 
 scalar_t__ ipxcfg_auto_select_primary ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ipx_interface *intrfc)
{
	FUNC1(&ipx_interfaces_lock);
	FUNC0(&intrfc->node, &ipx_interfaces);
	FUNC2(&ipx_interfaces_lock);

	if (ipxcfg_auto_select_primary && !ipx_primary_net)
		ipx_primary_net = intrfc;
}
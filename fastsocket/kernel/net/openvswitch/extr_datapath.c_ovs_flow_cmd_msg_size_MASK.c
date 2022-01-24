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
struct sw_flow_actions {int actions_len; } ;
struct ovs_header {int dummy; } ;
struct ovs_flow_stats {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 int FUNC1 () ; 
 size_t FUNC2 (int) ; 

__attribute__((used)) static size_t FUNC3(const struct sw_flow_actions *acts)
{
	return FUNC0(sizeof(struct ovs_header))
		+ FUNC2(FUNC1()) /* OVS_FLOW_ATTR_KEY */
		+ FUNC2(sizeof(struct ovs_flow_stats)) /* OVS_FLOW_ATTR_STATS */
		+ FUNC2(1) /* OVS_FLOW_ATTR_TCP_FLAGS */
		+ FUNC2(8) /* OVS_FLOW_ATTR_USED */
		+ FUNC2(acts->actions_len); /* OVS_FLOW_ATTR_ACTIONS */
}
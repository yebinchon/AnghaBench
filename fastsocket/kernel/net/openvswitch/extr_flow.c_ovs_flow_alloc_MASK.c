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
struct sw_flow {int /*<<< orphan*/ * sf_acts; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct sw_flow* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  flow_cache ; 
 struct sw_flow* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct sw_flow *FUNC3(void)
{
	struct sw_flow *flow;

	flow = FUNC1(flow_cache, GFP_KERNEL);
	if (!flow)
		return FUNC0(-ENOMEM);

	FUNC2(&flow->lock);
	flow->sf_acts = NULL;

	return flow;
}
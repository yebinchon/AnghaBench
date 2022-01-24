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
struct sw_flow_actions {int dummy; } ;
struct sw_flow {int /*<<< orphan*/  sf_acts; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sw_flow_actions const*) ; 
 struct sw_flow_actions* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC3(struct sw_flow *flow)
{
	const struct sw_flow_actions *sf_acts;

	sf_acts = FUNC2(flow->sf_acts);

	return FUNC0(FUNC1(sf_acts), GFP_KERNEL);
}
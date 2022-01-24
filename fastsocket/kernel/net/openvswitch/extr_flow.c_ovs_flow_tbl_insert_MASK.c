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
struct sw_flow_key {int dummy; } ;
struct sw_flow {int /*<<< orphan*/  key; int /*<<< orphan*/  hash; } ;
struct flow_table {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct flow_table*,struct sw_flow*) ; 
 int /*<<< orphan*/  FUNC1 (struct sw_flow_key*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sw_flow_key*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sw_flow_key*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct flow_table *table, struct sw_flow *flow,
			 struct sw_flow_key *key, int key_len)
{
	flow->hash = FUNC3(key, FUNC1(key), key_len);
	FUNC2(&flow->key, key, sizeof(flow->key));
	FUNC0(table, flow);
}
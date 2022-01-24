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
struct sw_flow {int /*<<< orphan*/ * hash_node; int /*<<< orphan*/  hash; } ;
struct hlist_head {int dummy; } ;
struct flow_table {size_t node_ver; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 struct hlist_head* FUNC0 (struct flow_table*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct hlist_head*) ; 

__attribute__((used)) static void FUNC2(struct flow_table *table, struct sw_flow *flow)
{
	struct hlist_head *head;
	head = FUNC0(table, flow->hash);
	FUNC1(&flow->hash_node[table->node_ver], head);
	table->count++;
}
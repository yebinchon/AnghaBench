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
typedef  int /*<<< orphan*/  u32 ;
struct flow_table {int n_buckets; int keep_flows; int /*<<< orphan*/  hash_seed; scalar_t__ node_ver; scalar_t__ count; int /*<<< orphan*/  buckets; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct flow_table*) ; 
 struct flow_table* FUNC3 (int,int /*<<< orphan*/ ) ; 

struct flow_table *FUNC4(int new_size)
{
	struct flow_table *table = FUNC3(sizeof(*table), GFP_KERNEL);

	if (!table)
		return NULL;

	table->buckets = FUNC0(new_size);

	if (!table->buckets) {
		FUNC2(table);
		return NULL;
	}
	table->n_buckets = new_size;
	table->count = 0;
	table->node_ver = 0;
	table->keep_flows = false;
	FUNC1(&table->hash_seed, sizeof(u32));

	return table;
}
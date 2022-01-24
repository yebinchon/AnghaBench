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
struct flow_table {int dummy; } ;
struct datapath {int /*<<< orphan*/  table; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  TBL_MIN_BUCKETS ; 
 struct flow_table* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct flow_table*) ; 
 struct flow_table* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct flow_table*) ; 

__attribute__((used)) static int FUNC4(struct datapath *dp)
{
	struct flow_table *old_table;
	struct flow_table *new_table;

	old_table = FUNC2(dp->table);
	new_table = FUNC0(TBL_MIN_BUCKETS);
	if (!new_table)
		return -ENOMEM;

	FUNC3(dp->table, new_table);

	FUNC1(old_table);
	return 0;
}
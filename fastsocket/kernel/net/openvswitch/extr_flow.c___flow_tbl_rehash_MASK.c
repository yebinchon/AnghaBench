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

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct flow_table* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct flow_table*,struct flow_table*) ; 
 struct flow_table* FUNC2 (int) ; 

__attribute__((used)) static struct flow_table *FUNC3(struct flow_table *table, int n_buckets)
{
	struct flow_table *new_table;

	new_table = FUNC2(n_buckets);
	if (!new_table)
		return FUNC0(-ENOMEM);

	FUNC1(table, new_table);

	return new_table;
}
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
struct ctl_table {char* procname; char* ctl_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (struct ctl_table*) ; 
 struct ctl_table* FUNC2 (struct ctl_table*,int) ; 

__attribute__((used)) static void FUNC3(struct ctl_table *table)
{
	struct ctl_table *tmp;
	int depth, i;
	depth = FUNC1(table);
	if (table->procname) {
		for (i = depth; i >= 0; i--) {
			tmp = FUNC2(table, i);
			FUNC0("/%s", tmp->procname?tmp->procname:"");
		}
	}
	FUNC0(" ");
	if (table->ctl_name) {
		for (i = depth; i >= 0; i--) {
			tmp = FUNC2(table, i);
			FUNC0(".%d", tmp->ctl_name);
		}
	}
}
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
struct trans_ctl_table {scalar_t__ ctl_name; scalar_t__ procname; } ;
struct ctl_table {scalar_t__ ctl_name; int /*<<< orphan*/  procname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const**,struct ctl_table*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct trans_ctl_table* FUNC2 (struct ctl_table*) ; 

__attribute__((used)) static void FUNC3(struct ctl_table *table, const char **fail)
{
	const struct trans_ctl_table *ref;

	ref = FUNC2(table);
	if (table->ctl_name && !ref)
		FUNC0(fail, table, "Unknown sysctl binary path");
	if (ref) {
		if (ref->procname &&
		    (!table->procname ||
		     (FUNC1(table->procname, ref->procname) != 0)))
			FUNC0(fail, table, "procname does not match binary path procname");

		if (ref->ctl_name && table->ctl_name &&
		    (table->ctl_name != ref->ctl_name))
			FUNC0(fail, table, "ctl_name does not match binary path ctl_name");
	}
}
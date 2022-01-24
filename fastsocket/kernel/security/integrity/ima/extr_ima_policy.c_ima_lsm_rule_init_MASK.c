#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ima_measure_rule_entry {TYPE_1__* lsm; } ;
struct TYPE_2__ {int type; scalar_t__ rule; } ;

/* Variables and functions */
 int /*<<< orphan*/  Audit_equal ; 
 int EINVAL ; 
 int FUNC0 (int,int /*<<< orphan*/ ,char*,scalar_t__*) ; 

__attribute__((used)) static int FUNC1(struct ima_measure_rule_entry *entry,
			     char *args, int lsm_rule, int audit_type)
{
	int result;

	if (entry->lsm[lsm_rule].rule)
		return -EINVAL;

	entry->lsm[lsm_rule].type = audit_type;
	result = FUNC0(entry->lsm[lsm_rule].type,
					   Audit_equal, args,
					   &entry->lsm[lsm_rule].rule);
	if (!entry->lsm[lsm_rule].rule)
		return -EINVAL;
	return result;
}
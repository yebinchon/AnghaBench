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
struct ima_measure_rule_entry {int /*<<< orphan*/  list; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_INTEGRITY_STATUS ; 
 int EACCES ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ima_measure ; 
 int /*<<< orphan*/  ima_measure_mutex ; 
 int FUNC1 (char*,struct ima_measure_rule_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ima_measure_rule_entry*) ; 
 struct ima_measure_rule_entry* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  measure_default_rules ; 
 int /*<<< orphan*/  measure_policy_rules ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (char*) ; 
 char* FUNC9 (char**,char*) ; 

ssize_t FUNC10(char *rule)
{
	const char *op = "update_policy";
	char *p;
	struct ima_measure_rule_entry *entry;
	ssize_t result, len;
	int audit_info = 0;

	/* Prevent installed policy from changing */
	if (ima_measure != &measure_default_rules) {
		FUNC2(AUDIT_INTEGRITY_STATUS, NULL,
				    NULL, op, "already exists",
				    -EACCES, audit_info);
		return -EACCES;
	}

	entry = FUNC4(sizeof(*entry), GFP_KERNEL);
	if (!entry) {
		FUNC2(AUDIT_INTEGRITY_STATUS, NULL,
				    NULL, op, "-ENOMEM", -ENOMEM, audit_info);
		return -ENOMEM;
	}

	FUNC0(&entry->list);

	p = FUNC9(&rule, "\n");
	len = FUNC8(p) + 1;

	if (*p == '#') {
		FUNC3(entry);
		return len;
	}

	result = FUNC1(p, entry);
	if (result) {
		FUNC3(entry);
		FUNC2(AUDIT_INTEGRITY_STATUS, NULL,
				    NULL, op, "invalid policy", result,
				    audit_info);
		return result;
	}

	FUNC6(&ima_measure_mutex);
	FUNC5(&entry->list, &measure_policy_rules);
	FUNC7(&ima_measure_mutex);

	return len;
}
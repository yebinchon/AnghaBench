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

/* Variables and functions */
 scalar_t__ MAX_RULE ; 
 scalar_t__ MAX_RULES_INCREMENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ current_max_rules ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int linenum ; 
 int /*<<< orphan*/  num_reallocs ; 
 scalar_t__ num_rules ; 
 int* FUNC2 (int*,scalar_t__) ; 
 int* FUNC3 (int*,scalar_t__) ; 
 int* rule_has_nl ; 
 int* rule_linenum ; 
 int* rule_type ; 
 int* rule_useful ; 

void    FUNC4 ()
{
	if (++num_rules >= current_max_rules) {
		++num_reallocs;
		current_max_rules += MAX_RULES_INCREMENT;
		rule_type = FUNC3 (rule_type,
						      current_max_rules);
		rule_linenum = FUNC3 (rule_linenum,
							 current_max_rules);
		rule_useful = FUNC3 (rule_useful,
							current_max_rules);
		rule_has_nl = FUNC2 (rule_has_nl,
						     current_max_rules);
	}

	if (num_rules > MAX_RULE)
		FUNC1 (FUNC0("too many rules (> %d)!"), MAX_RULE);

	rule_linenum[num_rules] = linenum;
	rule_useful[num_rules] = false;
	rule_has_nl[num_rules] = false;
}
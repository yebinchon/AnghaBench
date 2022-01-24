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
struct audit_krule {int field_count; struct audit_field* filterkey; struct audit_field* fields; scalar_t__ watch; } ;
struct audit_field {int /*<<< orphan*/  lsm_rule; struct audit_field* lsm_str; struct audit_krule rule; } ;
struct audit_entry {int /*<<< orphan*/  lsm_rule; struct audit_entry* lsm_str; struct audit_krule rule; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct audit_field*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct audit_entry *e)
{
	int i;
	struct audit_krule *erule = &e->rule;
	/* some rules don't have associated watches */
	if (erule->watch)
		FUNC0(erule->watch);
	if (erule->fields)
		for (i = 0; i < erule->field_count; i++) {
			struct audit_field *f = &erule->fields[i];
			FUNC1(f->lsm_str);
			FUNC2(f->lsm_rule);
		}
	FUNC1(erule->fields);
	FUNC1(erule->filterkey);
	FUNC1(e);
}
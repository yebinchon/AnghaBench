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
struct TYPE_2__ {scalar_t__ target_size; } ;
struct arpt_entry_target {TYPE_1__ u; } ;
struct arpt_entry {scalar_t__ target_offset; scalar_t__ next_offset; int /*<<< orphan*/  arp; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct arpt_entry_target* FUNC1 (struct arpt_entry*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct arpt_entry*,char const*) ; 

__attribute__((used)) static inline int FUNC3(struct arpt_entry *e, const char *name)
{
	const struct arpt_entry_target *t;

	if (!FUNC0(&e->arp)) {
		FUNC2("arp_tables: arp check failed %p %s.\n", e, name);
		return -EINVAL;
	}

	if (e->target_offset + sizeof(struct arpt_entry_target) > e->next_offset)
		return -EINVAL;

	t = FUNC1(e);
	if (e->target_offset + t->u.target_size > e->next_offset)
		return -EINVAL;

	return 0;
}
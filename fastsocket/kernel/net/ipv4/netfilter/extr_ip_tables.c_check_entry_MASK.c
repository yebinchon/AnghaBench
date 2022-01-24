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
struct ipt_entry_target {TYPE_1__ u; } ;
struct ipt_entry {scalar_t__ target_offset; scalar_t__ next_offset; int /*<<< orphan*/  ip; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,struct ipt_entry*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ipt_entry_target* FUNC2 (struct ipt_entry*) ; 

__attribute__((used)) static int
FUNC3(struct ipt_entry *e, const char *name)
{
	struct ipt_entry_target *t;

	if (!FUNC1(&e->ip)) {
		FUNC0("ip_tables: ip check failed %p %s.\n", e, name);
		return -EINVAL;
	}

	if (e->target_offset + sizeof(struct ipt_entry_target) >
	    e->next_offset)
		return -EINVAL;

	t = FUNC2(e);
	if (e->target_offset + t->u.target_size > e->next_offset)
		return -EINVAL;

	return 0;
}
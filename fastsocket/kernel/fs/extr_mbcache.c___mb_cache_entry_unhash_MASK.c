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
struct mb_cache_entry {TYPE_1__* e_indexes; int /*<<< orphan*/  e_cache; int /*<<< orphan*/  e_block_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  o_list; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mb_cache_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct mb_cache_entry *ce)
{
	int n;

	if (FUNC0(ce)) {
		FUNC2(&ce->e_block_list);
		for (n=0; n<FUNC3(ce->e_cache); n++)
			FUNC1(&ce->e_indexes[n].o_list);
	}
}
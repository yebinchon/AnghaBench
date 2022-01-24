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
struct filter_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct filter_entry* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  filter_entries ; 
 int /*<<< orphan*/  FUNC3 (struct filter_entry*) ; 
 int /*<<< orphan*/  nm_out_filter ; 

__attribute__((used)) static void
FUNC4(void)
{
	struct filter_entry *e;

	while (!FUNC0(&nm_out_filter)) {
		e = FUNC1(&nm_out_filter);
		FUNC2(&nm_out_filter, filter_entries);
		FUNC3(e);
	}
}
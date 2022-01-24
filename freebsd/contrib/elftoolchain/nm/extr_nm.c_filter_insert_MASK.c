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
struct filter_entry {int /*<<< orphan*/ * fn; } ;
typedef  int /*<<< orphan*/ * fn_filter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct filter_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  filter_entries ; 
 struct filter_entry* FUNC2 (int) ; 
 int /*<<< orphan*/  nm_out_filter ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(fn_filter filter_fn)
{
	struct filter_entry *e;

	FUNC1(filter_fn != NULL);

	if ((e = FUNC2(sizeof(struct filter_entry))) == NULL) {
		FUNC3("malloc");
		return (0);
	}
	e->fn = filter_fn;
	FUNC0(&nm_out_filter, e, filter_entries);

	return (1);
}
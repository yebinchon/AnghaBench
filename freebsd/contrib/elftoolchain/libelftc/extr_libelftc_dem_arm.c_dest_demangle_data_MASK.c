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
struct demangle_data {int /*<<< orphan*/  array_str; int /*<<< orphan*/  vec; int /*<<< orphan*/  arg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct demangle_data *d)
{

	if (d != NULL) {
		FUNC1(&d->arg);
		FUNC1(&d->vec);

		FUNC0(&d->array_str);
	}
}
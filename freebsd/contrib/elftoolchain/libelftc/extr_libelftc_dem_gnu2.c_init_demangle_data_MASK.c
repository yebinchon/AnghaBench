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
struct TYPE_2__ {scalar_t__ size; int /*<<< orphan*/ * buf; } ;
struct demangle_data {int ptr; int ref; int cnst; int array; int cnst_fn; int class_name; int /*<<< orphan*/  vec; int /*<<< orphan*/  arg; int /*<<< orphan*/  type; TYPE_1__ array_str; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENCODE_FUNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC2(struct demangle_data *d)
{

	if (d == NULL)
		return (false);

	d->ptr = false;
	d->ref = false;
	d->cnst = false;
	d->array = false;
	d->cnst_fn = false;
	d->class_name = false;

	d->array_str.buf = NULL;
	d->array_str.size = 0;

	d->type = ENCODE_FUNC;

	if (FUNC1(&d->vec) == false)
		return (false);

	if (FUNC1(&d->arg) == false) {
		FUNC0(&d->vec);

		return (false);
	}

	return (true);
}
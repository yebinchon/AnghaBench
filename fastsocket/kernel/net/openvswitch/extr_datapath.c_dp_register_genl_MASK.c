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
struct genl_family_and_ops {scalar_t__ group; int /*<<< orphan*/  family; int /*<<< orphan*/  n_ops; int /*<<< orphan*/  ops; } ;

/* Variables and functions */
 int FUNC0 (struct genl_family_and_ops*) ; 
 struct genl_family_and_ops* dp_genl_families ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(void)
{
	int n_registered;
	int err;
	int i;

	n_registered = 0;
	for (i = 0; i < FUNC0(dp_genl_families); i++) {
		const struct genl_family_and_ops *f = &dp_genl_families[i];

		err = FUNC2(f->family, f->ops,
						    f->n_ops);
		if (err)
			goto error;
		n_registered++;

		if (f->group) {
			err = FUNC3(f->family, f->group);
			if (err)
				goto error;
		}
	}

	return 0;

error:
	FUNC1(n_registered);
	return err;
}
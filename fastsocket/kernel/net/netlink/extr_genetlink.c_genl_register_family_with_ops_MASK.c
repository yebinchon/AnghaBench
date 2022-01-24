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
struct genl_ops {int dummy; } ;
struct genl_family {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct genl_family*) ; 
 int FUNC1 (struct genl_family*,struct genl_ops*) ; 
 int /*<<< orphan*/  FUNC2 (struct genl_family*) ; 

int FUNC3(struct genl_family *family,
	struct genl_ops *ops, size_t n_ops)
{
	int err, i;

	err = FUNC0(family);
	if (err)
		return err;

	for (i = 0; i < n_ops; ++i, ++ops) {
		err = FUNC1(family, ops);
		if (err)
			goto err_out;
	}
	return 0;
err_out:
	FUNC2(family);
	return err;
}
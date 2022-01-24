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
struct dst_node {TYPE_1__* info; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * dst_node_attrs ; 

__attribute__((used)) static int FUNC3(struct dst_node *n)
{
	int err, i;

	for (i=0; i<FUNC0(dst_node_attrs); ++i) {
		err = FUNC1(&n->info->device,
				&dst_node_attrs[i]);
		if (err)
			goto err_out_remove_all;
	}
	return 0;

err_out_remove_all:
	while (--i >= 0)
		FUNC2(&n->info->device,
				&dst_node_attrs[i]);

	return err;
}
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
struct dst_network_ctl {int dummy; } ;
struct dst_ctl {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  net; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct dst_node* FUNC0 (struct dst_ctl*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dst_node*) ; 
 int FUNC2 (struct dst_node*,struct dst_network_ctl*) ; 
 int /*<<< orphan*/  FUNC3 (struct dst_node*) ; 
 int /*<<< orphan*/  dst_start_remote ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct dst_network_ctl*,int) ; 

__attribute__((used)) static int FUNC5(struct dst_node *n, struct dst_ctl *ctl,
		void *data, unsigned int size)
{
	int err;
	struct dst_network_ctl *rctl = data;

	if (n)
		return -EEXIST;

	if (size != sizeof(struct dst_network_ctl))
		return -EINVAL;

	n = FUNC0(ctl, dst_start_remote, 1);
	if (!n)
		return -ENOMEM;

	FUNC4(&n->info->net, rctl, sizeof(struct dst_network_ctl));
	err = FUNC2(n, rctl);
	if (err)
		goto err_out_free;

	FUNC1(n);

	return 0;

err_out_free:
	FUNC3(n);
	return err;
}
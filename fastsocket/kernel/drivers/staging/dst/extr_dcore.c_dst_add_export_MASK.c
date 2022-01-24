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
struct dst_node {int dummy; } ;
struct dst_export_ctl {int dummy; } ;
struct dst_ctl {int dummy; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 struct dst_node* FUNC0 (struct dst_ctl*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dst_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct dst_node*) ; 
 int FUNC3 (struct dst_node*,struct dst_ctl*,struct dst_export_ctl*) ; 
 int /*<<< orphan*/  dst_start_export ; 

__attribute__((used)) static int FUNC4(struct dst_node *n, struct dst_ctl *ctl,
		void *data, unsigned int size)
{
	int err;
	struct dst_export_ctl *le = data;

	if (n)
		return -EEXIST;

	if (size != sizeof(struct dst_export_ctl))
		return -EINVAL;

	n = FUNC0(ctl, dst_start_export, 2);
	if (!n)
		return -EINVAL;

	err = FUNC3(n, ctl, le);
	if (err)
		goto err_out_free;

	FUNC1(n);

	return 0;

err_out_free:
	FUNC2(n);
	return err;
}
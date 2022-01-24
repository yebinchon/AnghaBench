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
struct netfs_trans_dst {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netfs_trans_dst ; 
 int /*<<< orphan*/  netfs_trans_dst_pool ; 

int FUNC3(void)
{
	int err = -ENOMEM;

	netfs_trans_dst = FUNC0("netfs_trans_dst", sizeof(struct netfs_trans_dst),
			0, 0, NULL);
	if (!netfs_trans_dst)
		goto err_out_exit;

	netfs_trans_dst_pool = FUNC2(256, netfs_trans_dst);
	if (!netfs_trans_dst_pool)
		goto err_out_free;

	return 0;

err_out_free:
	FUNC1(netfs_trans_dst);
err_out_exit:
	return err;
}
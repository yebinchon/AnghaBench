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

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/ * nfs_callback_sysctl_table ; 
 int /*<<< orphan*/  nfs_cb_sysctl_root ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 

int FUNC1(void)
{
	nfs_callback_sysctl_table = FUNC0(nfs_cb_sysctl_root);
	if (nfs_callback_sysctl_table == NULL)
		return -ENOMEM;
	return 0;
}
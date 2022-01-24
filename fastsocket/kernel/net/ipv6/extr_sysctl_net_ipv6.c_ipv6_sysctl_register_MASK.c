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
 int /*<<< orphan*/ * ip6_header ; 
 int /*<<< orphan*/  ipv6_rotable ; 
 int /*<<< orphan*/  ipv6_sysctl_net_ops ; 
 int /*<<< orphan*/  net_ipv6_ctl_path ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(void)
{
	int err = -ENOMEM;

	ip6_header = FUNC0(net_ipv6_ctl_path, ipv6_rotable);
	if (ip6_header == NULL)
		goto out;

	err = FUNC1(&ipv6_sysctl_net_ops);
	if (err)
		goto err_pernet;
out:
	return err;

err_pernet:
	FUNC2(ip6_header);
	goto out;
}
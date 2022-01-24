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
struct TYPE_2__ {int sysctl_max_dgram_qlen; } ;
struct net {TYPE_1__ unx; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct net*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  unix_seq_fops ; 
 scalar_t__ FUNC1 (struct net*) ; 
 int /*<<< orphan*/  FUNC2 (struct net*) ; 

__attribute__((used)) static int FUNC3(struct net *net)
{
	int error = -ENOMEM;

	net->unx.sysctl_max_dgram_qlen = 10;
	if (FUNC1(net))
		goto out;

#ifdef CONFIG_PROC_FS
	if (!proc_net_fops_create(net, "unix", 0, &unix_seq_fops)) {
		unix_sysctl_unregister(net);
		goto out;
	}
#endif
	error = 0;
out:
	return error;
}
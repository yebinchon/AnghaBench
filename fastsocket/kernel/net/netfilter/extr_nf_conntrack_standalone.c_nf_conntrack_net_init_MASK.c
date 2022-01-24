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
struct TYPE_2__ {int sysctl_checksum; scalar_t__ sysctl_log_invalid; } ;
struct net {TYPE_1__ ct; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net*) ; 
 int FUNC1 (struct net*) ; 
 int /*<<< orphan*/  FUNC2 (struct net*) ; 
 int FUNC3 (struct net*) ; 
 int FUNC4 (struct net*) ; 

__attribute__((used)) static int FUNC5(struct net *net)
{
	int ret;

	ret = FUNC1(net);
	if (ret < 0)
		goto out_init;
	ret = FUNC3(net);
	if (ret < 0)
		goto out_proc;
	net->ct.sysctl_checksum = 1;
	net->ct.sysctl_log_invalid = 0;
	ret = FUNC4(net);
	if (ret < 0)
		goto out_sysctl;
	return 0;

out_sysctl:
	FUNC2(net);
out_proc:
	FUNC0(net);
out_init:
	return ret;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int family; int type; int protocol; } ;
struct TYPE_4__ {TYPE_1__ socket_op; } ;
struct fsocket_ioctl_arg {TYPE_2__ op; } ;

/* Variables and functions */
 int AF_INET ; 
 int /*<<< orphan*/  DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  INFO ; 
 int SOCK_STREAM ; 
 int SOCK_TYPE_MASK ; 
 int FUNC1 (int) ; 
 int FUNC2 (int,int,int) ; 

__attribute__((used)) static int FUNC3(struct fsocket_ioctl_arg *arg)
{
	int family, type, protocol, fd;

	FUNC0(DEBUG,"Try to create fastsocket\n");

	family = arg->op.socket_op.family;
	type = arg->op.socket_op.type;
	protocol = arg->op.socket_op.protocol;

	if (( family == AF_INET ) &&
		((type & SOCK_TYPE_MASK) == SOCK_STREAM )) {
		fd = FUNC1(type & ~SOCK_TYPE_MASK);
		FUNC0(DEBUG,"Create fastsocket %d\n", fd);
		return fd;
	} else {
		fd = FUNC2(family, type, protocol);
		FUNC0(INFO, "Create non fastsocket %d\n", fd);
		return fd;
	}
}
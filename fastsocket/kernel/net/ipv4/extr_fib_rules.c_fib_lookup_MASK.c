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
struct TYPE_2__ {int /*<<< orphan*/  rules_ops; } ;
struct net {TYPE_1__ ipv4; } ;
struct flowi {int dummy; } ;
struct fib_result {int /*<<< orphan*/  r; } ;
struct fib_lookup_arg {int /*<<< orphan*/  rule; struct fib_result* result; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct flowi*,int /*<<< orphan*/ ,struct fib_lookup_arg*) ; 

int FUNC1(struct net *net, struct flowi *flp, struct fib_result *res)
{
	struct fib_lookup_arg arg = {
		.result = res,
	};
	int err;

	err = FUNC0(net->ipv4.rules_ops, flp, 0, &arg);
	res->r = arg.rule;

	return err;
}
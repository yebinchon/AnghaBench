#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* fib6_rules_ops; } ;
struct net {TYPE_1__ ipv6; } ;
struct TYPE_8__ {int /*<<< orphan*/  rules_list; struct net* fro_net; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FIB_RULE_PERMANENT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RT6_TABLE_LOCAL ; 
 int /*<<< orphan*/  RT6_TABLE_MAIN ; 
 int /*<<< orphan*/  fib6_rules_ops_template ; 
 int FUNC1 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net *net)
{
	int err = -ENOMEM;

	net->ipv6.fib6_rules_ops = FUNC5(&fib6_rules_ops_template,
					   sizeof(*net->ipv6.fib6_rules_ops),
					   GFP_KERNEL);
	if (!net->ipv6.fib6_rules_ops)
		goto out;

	net->ipv6.fib6_rules_ops->fro_net = net;
	FUNC0(&net->ipv6.fib6_rules_ops->rules_list);

	err = FUNC1(net->ipv6.fib6_rules_ops, 0,
				   RT6_TABLE_LOCAL, FIB_RULE_PERMANENT);
	if (err)
		goto out_fib6_rules_ops;

	err = FUNC1(net->ipv6.fib6_rules_ops,
				   0x7FFE, RT6_TABLE_MAIN, 0);
	if (err)
		goto out_fib6_default_rule_add;

	err = FUNC3(net->ipv6.fib6_rules_ops);
	if (err)
		goto out_fib6_default_rule_add;
out:
	return err;

out_fib6_default_rule_add:
	FUNC2(net->ipv6.fib6_rules_ops);
out_fib6_rules_ops:
	FUNC4(net->ipv6.fib6_rules_ops);
	goto out;
}
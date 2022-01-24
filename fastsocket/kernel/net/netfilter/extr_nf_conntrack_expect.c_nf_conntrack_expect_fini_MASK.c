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
struct TYPE_2__ {int /*<<< orphan*/  expect_vmalloc; int /*<<< orphan*/  expect_hash; } ;
struct net {TYPE_1__ ct; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct net*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nf_ct_expect_cachep ; 
 int /*<<< orphan*/  nf_ct_expect_hsize ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(struct net *net)
{
	FUNC0(net);
	if (FUNC2(net, &init_net)) {
		FUNC4(); /* Wait for call_rcu() before destroy */
		FUNC1(nf_ct_expect_cachep);
	}
	FUNC3(net->ct.expect_hash, net->ct.expect_vmalloc,
			     nf_ct_expect_hsize);
}
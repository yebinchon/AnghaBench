#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nf_conntrack_expect_policy {int timeout; } ;
struct TYPE_7__ {scalar_t__ expires; } ;
struct nf_conntrack_expect {size_t class; int /*<<< orphan*/  use; TYPE_3__ timeout; int /*<<< orphan*/  hnode; int /*<<< orphan*/  lnode; int /*<<< orphan*/  tuple; int /*<<< orphan*/  master; } ;
struct nf_conn_help {TYPE_2__* helper; int /*<<< orphan*/ * expecting; int /*<<< orphan*/  expectations; } ;
struct TYPE_5__ {int /*<<< orphan*/  expect_count; int /*<<< orphan*/ * expect_hash; } ;
struct net {TYPE_1__ ct; } ;
struct TYPE_6__ {struct nf_conntrack_expect_policy* expect_policy; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  expect_create ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 struct net* FUNC5 (struct nf_conntrack_expect*) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nf_ct_expectation_timed_out ; 
 struct nf_conn_help* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct nf_conntrack_expect *exp)
{
	struct nf_conn_help *master_help = FUNC7(exp->master);
	struct net *net = FUNC5(exp);
	const struct nf_conntrack_expect_policy *p;
	unsigned int h = FUNC6(&exp->tuple);

	FUNC2(&exp->use);

	FUNC3(&exp->lnode, &master_help->expectations);
	master_help->expecting[exp->class]++;

	FUNC4(&exp->hnode, &net->ct.expect_hash[h]);
	net->ct.expect_count++;

	FUNC8(&exp->timeout, nf_ct_expectation_timed_out,
		    (unsigned long)exp);
	p = &master_help->helper->expect_policy[exp->class];
	exp->timeout.expires = jiffies + p->timeout * HZ;
	FUNC1(&exp->timeout);

	FUNC2(&exp->use);
	FUNC0(net, expect_create);
}
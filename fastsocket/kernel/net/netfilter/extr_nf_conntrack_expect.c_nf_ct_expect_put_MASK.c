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
struct nf_conntrack_expect {int /*<<< orphan*/  rcu; int /*<<< orphan*/  use; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nf_ct_expect_free_rcu ; 

void FUNC2(struct nf_conntrack_expect *exp)
{
	if (FUNC0(&exp->use))
		FUNC1(&exp->rcu, nf_ct_expect_free_rcu);
}
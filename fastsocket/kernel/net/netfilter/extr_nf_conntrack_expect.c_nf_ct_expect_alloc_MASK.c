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
struct nf_conntrack_expect {int /*<<< orphan*/  rcu; int /*<<< orphan*/  use; struct nf_conn* master; } ;
struct nf_conn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct nf_conntrack_expect* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nf_ct_expect_cachep ; 

struct nf_conntrack_expect *FUNC3(struct nf_conn *me)
{
	struct nf_conntrack_expect *new;

	new = FUNC2(nf_ct_expect_cachep, GFP_ATOMIC);
	if (!new)
		return NULL;

	new->master = me;
	FUNC1(&new->use, 1);
	FUNC0(&new->rcu);
	return new;
}
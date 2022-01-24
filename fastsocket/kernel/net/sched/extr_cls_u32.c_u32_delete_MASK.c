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
struct tcf_proto {struct tc_u_hnode* root; } ;
struct tc_u_knode {int dummy; } ;
struct tc_u_hnode {int refcnt; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct tcf_proto*,struct tc_u_knode*) ; 
 int /*<<< orphan*/  FUNC2 (struct tcf_proto*,struct tc_u_hnode*) ; 

__attribute__((used)) static int FUNC3(struct tcf_proto *tp, unsigned long arg)
{
	struct tc_u_hnode *ht = (struct tc_u_hnode*)arg;

	if (ht == NULL)
		return 0;

	if (FUNC0(ht->handle))
		return FUNC1(tp, (struct tc_u_knode*)ht);

	if (tp->root == ht)
		return -EINVAL;

	if (ht->refcnt == 1) {
		ht->refcnt--;
		FUNC2(tp, ht);
	} else {
		return -EBUSY;
	}

	return 0;
}
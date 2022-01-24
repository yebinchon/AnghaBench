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
typedef  void* u32 ;
struct fib_rules_ops {int /*<<< orphan*/  rules_list; int /*<<< orphan*/  fro_net; int /*<<< orphan*/  rule_size; } ;
struct fib_rule {int /*<<< orphan*/  list; int /*<<< orphan*/  fr_net; void* flags; void* table; void* pref; int /*<<< orphan*/  action; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FR_ACT_TO_TBL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct fib_rule* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC4(struct fib_rules_ops *ops,
			 u32 pref, u32 table, u32 flags)
{
	struct fib_rule *r;

	r = FUNC2(ops->rule_size, GFP_KERNEL);
	if (r == NULL)
		return -ENOMEM;

	FUNC0(&r->refcnt, 1);
	r->action = FR_ACT_TO_TBL;
	r->pref = pref;
	r->table = table;
	r->flags = flags;
	r->fr_net = FUNC1(ops->fro_net);

	/* The lock is not required here, the list in unreacheable
	 * at the moment this function is called */
	FUNC3(&r->list, &ops->rules_list);
	return 0;
}
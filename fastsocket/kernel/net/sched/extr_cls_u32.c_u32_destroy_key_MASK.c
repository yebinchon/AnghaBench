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
struct tcf_proto {int dummy; } ;
struct tc_u_knode {struct tc_u_knode* pf; TYPE_1__* ht_down; int /*<<< orphan*/  exts; int /*<<< orphan*/  res; } ;
struct TYPE_2__ {int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tc_u_knode*) ; 
 int /*<<< orphan*/  FUNC1 (struct tcf_proto*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tcf_proto*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct tcf_proto *tp, struct tc_u_knode *n)
{
	FUNC2(tp, &n->res);
	FUNC1(tp, &n->exts);
	if (n->ht_down)
		n->ht_down->refcnt--;
#ifdef CONFIG_CLS_U32_PERF
	kfree(n->pf);
#endif
	FUNC0(n);
	return 0;
}
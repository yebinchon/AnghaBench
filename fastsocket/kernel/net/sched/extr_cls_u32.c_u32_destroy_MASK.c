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
struct tcf_proto {struct tc_u_hnode* data; TYPE_1__* q; struct tc_u_hnode* root; } ;
struct tc_u_hnode {scalar_t__ refcnt; struct tc_u_hnode* next; struct tc_u_hnode* hlist; } ;
struct tc_u_common {scalar_t__ refcnt; struct tc_u_common* next; struct tc_u_common* hlist; } ;
struct TYPE_2__ {int /*<<< orphan*/ * u32_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct tc_u_hnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct tcf_proto*,struct tc_u_hnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct tcf_proto*,struct tc_u_hnode*) ; 

__attribute__((used)) static void FUNC4(struct tcf_proto *tp)
{
	struct tc_u_common *tp_c = tp->data;
	struct tc_u_hnode *root_ht = tp->root;

	FUNC0(root_ht == NULL);

	if (root_ht && --root_ht->refcnt == 0)
		FUNC3(tp, root_ht);

	if (--tp_c->refcnt == 0) {
		struct tc_u_hnode *ht;

		tp->q->u32_node = NULL;

		for (ht = tp_c->hlist; ht; ht = ht->next) {
			ht->refcnt--;
			FUNC2(tp, ht);
		}

		while ((ht = tp_c->hlist) != NULL) {
			tp_c->hlist = ht->next;

			FUNC0(ht->refcnt != 0);

			FUNC1(ht);
		}

		FUNC1(tp_c);
	}

	tp->data = NULL;
}
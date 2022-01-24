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
struct tcf_proto {struct tc_u_common* data; } ;
struct tc_u_hnode {int refcnt; struct tc_u_hnode* next; } ;
struct tc_u_common {struct tc_u_hnode* hlist; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct tc_u_hnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct tcf_proto*,struct tc_u_hnode*) ; 

__attribute__((used)) static int FUNC3(struct tcf_proto *tp, struct tc_u_hnode *ht)
{
	struct tc_u_common *tp_c = tp->data;
	struct tc_u_hnode **hn;

	FUNC0(ht->refcnt);

	FUNC2(tp, ht);

	for (hn = &tp_c->hlist; *hn; hn = &(*hn)->next) {
		if (*hn == ht) {
			*hn = ht->next;
			FUNC1(ht);
			return 0;
		}
	}

	FUNC0(1);
	return -ENOENT;
}
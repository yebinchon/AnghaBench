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
struct tcf_proto {int dummy; } ;
struct tc_u_knode {struct tc_u_knode* next; } ;
struct tc_u_hnode {unsigned int divisor; struct tc_u_knode** ht; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tcf_proto*,struct tc_u_knode*) ; 

__attribute__((used)) static void FUNC1(struct tcf_proto *tp, struct tc_u_hnode *ht)
{
	struct tc_u_knode *n;
	unsigned h;

	for (h=0; h<=ht->divisor; h++) {
		while ((n = ht->ht[h]) != NULL) {
			ht->ht[h] = n->next;

			FUNC0(tp, n);
		}
	}
}
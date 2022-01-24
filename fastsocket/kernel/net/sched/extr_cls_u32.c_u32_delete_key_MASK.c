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
struct tc_u_knode {struct tc_u_knode* next; int /*<<< orphan*/  handle; struct tc_u_hnode* ht_up; } ;
struct tc_u_hnode {struct tc_u_knode** ht; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct tcf_proto*) ; 
 int /*<<< orphan*/  FUNC3 (struct tcf_proto*) ; 
 int /*<<< orphan*/  FUNC4 (struct tcf_proto*,struct tc_u_knode*) ; 

__attribute__((used)) static int FUNC5(struct tcf_proto *tp, struct tc_u_knode* key)
{
	struct tc_u_knode **kp;
	struct tc_u_hnode *ht = key->ht_up;

	if (ht) {
		for (kp = &ht->ht[FUNC0(key->handle)]; *kp; kp = &(*kp)->next) {
			if (*kp == key) {
				FUNC2(tp);
				*kp = key->next;
				FUNC3(tp);

				FUNC4(tp, key);
				return 0;
			}
		}
	}
	FUNC1(1);
	return 0;
}
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
struct tcf_pedit {int /*<<< orphan*/  common; struct tc_pedit_key* tcfp_keys; } ;
struct tc_pedit_key {int dummy; } ;
struct tc_action {struct tcf_pedit* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tc_pedit_key*) ; 
 int /*<<< orphan*/  pedit_hash_info ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct tc_action *a, int bind)
{
	struct tcf_pedit *p = a->priv;

	if (p) {
		struct tc_pedit_key *keys = p->tcfp_keys;
		if (FUNC1(&p->common, bind, &pedit_hash_info)) {
			FUNC0(keys);
			return 1;
		}
	}
	return 0;
}
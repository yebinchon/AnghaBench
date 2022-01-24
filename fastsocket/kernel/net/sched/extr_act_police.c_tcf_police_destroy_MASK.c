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
struct tcf_common {struct tcf_common* tcfc_next; } ;
struct tcf_police {scalar_t__ tcfp_P_tab; scalar_t__ tcfp_R_tab; int /*<<< orphan*/  tcf_rate_est; int /*<<< orphan*/  tcf_bstats; struct tcf_common* tcf_next; struct tcf_common common; int /*<<< orphan*/  tcf_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  POL_TAB_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tcf_police*) ; 
 int /*<<< orphan*/  police_lock ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tcf_common** tcf_police_ht ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct tcf_police *p)
{
	unsigned int h = FUNC4(p->tcf_index, POL_TAB_MASK);
	struct tcf_common **p1p;

	for (p1p = &tcf_police_ht[h]; *p1p; p1p = &(*p1p)->tcfc_next) {
		if (*p1p == &p->common) {
			FUNC5(&police_lock);
			*p1p = p->tcf_next;
			FUNC6(&police_lock);
			FUNC1(&p->tcf_bstats,
					   &p->tcf_rate_est);
			if (p->tcfp_R_tab)
				FUNC3(p->tcfp_R_tab);
			if (p->tcfp_P_tab)
				FUNC3(p->tcfp_P_tab);
			FUNC2(p);
			return;
		}
	}
	FUNC0(1);
}
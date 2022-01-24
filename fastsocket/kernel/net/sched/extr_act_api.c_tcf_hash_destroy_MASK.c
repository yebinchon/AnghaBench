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
struct tcf_hashinfo {int /*<<< orphan*/  lock; struct tcf_common** htab; int /*<<< orphan*/  hmask; } ;
struct tcf_common {int /*<<< orphan*/  tcfc_rate_est; int /*<<< orphan*/  tcfc_bstats; struct tcf_common* tcfc_next; int /*<<< orphan*/  tcfc_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tcf_common*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct tcf_common *p, struct tcf_hashinfo *hinfo)
{
	unsigned int h = FUNC3(p->tcfc_index, hinfo->hmask);
	struct tcf_common **p1p;

	for (p1p = &hinfo->htab[h]; *p1p; p1p = &(*p1p)->tcfc_next) {
		if (*p1p == p) {
			FUNC4(hinfo->lock);
			*p1p = p->tcfc_next;
			FUNC5(hinfo->lock);
			FUNC1(&p->tcfc_bstats,
					   &p->tcfc_rate_est);
			FUNC2(p);
			return;
		}
	}
	FUNC0(1);
}
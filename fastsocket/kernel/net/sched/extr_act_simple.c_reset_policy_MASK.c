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
struct tcf_defact {int /*<<< orphan*/  tcf_lock; int /*<<< orphan*/  tcfd_defdata; int /*<<< orphan*/  tcf_action; } ;
struct tc_defact {int /*<<< orphan*/  action; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIMP_MAX_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct tcf_defact *d, char *defdata,
			 struct tc_defact *p)
{
	FUNC1(&d->tcf_lock);
	d->tcf_action = p->action;
	FUNC0(d->tcfd_defdata, 0, SIMP_MAX_DATA);
	FUNC3(d->tcfd_defdata, defdata, SIMP_MAX_DATA);
	FUNC2(&d->tcf_lock);
}
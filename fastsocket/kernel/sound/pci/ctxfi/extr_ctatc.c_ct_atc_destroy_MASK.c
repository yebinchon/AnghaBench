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
struct hw {int dummy; } ;
struct ct_atc {int /*<<< orphan*/ * vm; scalar_t__ hw; scalar_t__* rsc_mgrs; scalar_t__ mixer; int /*<<< orphan*/ * timer; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* destroy ) (scalar_t__) ;} ;

/* Variables and functions */
 int NUM_RSCTYP ; 
 int /*<<< orphan*/  FUNC0 (struct ct_atc*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ct_atc*) ; 
 TYPE_1__* rsc_mgr_funcs ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct ct_atc *atc)
{
	int i = 0;

	if (!atc)
		return 0;

	if (atc->timer) {
		FUNC2(atc->timer);
		atc->timer = NULL;
	}

	FUNC0(atc);

	/* Destroy internal mixer objects */
	if (atc->mixer)
		FUNC1(atc->mixer);

	for (i = 0; i < NUM_RSCTYP; i++) {
		if (rsc_mgr_funcs[i].destroy && atc->rsc_mgrs[i])
			rsc_mgr_funcs[i].destroy(atc->rsc_mgrs[i]);

	}

	if (atc->hw)
		FUNC4((struct hw *)atc->hw);

	/* Destroy device virtual memory manager object */
	if (atc->vm) {
		FUNC3(atc->vm);
		atc->vm = NULL;
	}

	FUNC5(atc);

	return 0;
}
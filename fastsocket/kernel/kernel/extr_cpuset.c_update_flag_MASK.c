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
struct ptr_heap {int dummy; } ;
struct cpuset {int /*<<< orphan*/  cpus_allowed; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  cpuset_flagbits_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct cpuset* FUNC0 (struct cpuset*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  callback_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cpuset*) ; 
 int /*<<< orphan*/  FUNC5 (struct ptr_heap*) ; 
 int FUNC6 (struct ptr_heap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct cpuset*) ; 
 scalar_t__ FUNC8 (struct cpuset*) ; 
 scalar_t__ FUNC9 (struct cpuset*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct cpuset*,struct ptr_heap*) ; 
 int FUNC14 (struct cpuset*,struct cpuset*) ; 

__attribute__((used)) static int FUNC15(cpuset_flagbits_t bit, struct cpuset *cs,
		       int turning_on)
{
	struct cpuset *trialcs;
	int balance_flag_changed;
	int spread_flag_changed;
	struct ptr_heap heap;
	int err;

	trialcs = FUNC0(cs);
	if (!trialcs)
		return -ENOMEM;

	if (turning_on)
		FUNC12(bit, &trialcs->flags);
	else
		FUNC2(bit, &trialcs->flags);

	err = FUNC14(cs, trialcs);
	if (err < 0)
		goto out;

	err = FUNC6(&heap, PAGE_SIZE, GFP_KERNEL, NULL);
	if (err < 0)
		goto out;

	balance_flag_changed = (FUNC7(cs) !=
				FUNC7(trialcs));

	spread_flag_changed = ((FUNC9(cs) != FUNC9(trialcs))
			|| (FUNC8(cs) != FUNC8(trialcs)));

	FUNC10(&callback_mutex);
	cs->flags = trialcs->flags;
	FUNC11(&callback_mutex);

	if (!FUNC3(trialcs->cpus_allowed) && balance_flag_changed)
		FUNC1();

	if (spread_flag_changed)
		FUNC13(cs, &heap);
	FUNC5(&heap);
out:
	FUNC4(trialcs);
	return err;
}
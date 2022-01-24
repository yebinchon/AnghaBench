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
struct dlm_rsb {int dummy; } ;
struct dlm_message {int dummy; } ;
struct dlm_lkb {struct dlm_rsb* lkb_resource; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dlm_rsb*,struct dlm_lkb*,struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_rsb*) ; 
 int FUNC4 (struct dlm_lkb*,struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_rsb*) ; 
 int FUNC6 (struct dlm_lkb*,struct dlm_message*) ; 

__attribute__((used)) static void FUNC7(struct dlm_lkb *lkb, struct dlm_message *ms)
{
	struct dlm_rsb *r = lkb->lkb_resource;
	int error;

	FUNC1(r);
	FUNC2(r);

	error = FUNC6(lkb, ms);
	if (error)
		goto out;

	/* stub reply can happen with waiters_mutex held */
	error = FUNC4(lkb, ms);
	if (error)
		goto out;

	FUNC0(r, lkb, ms);
 out:
	FUNC5(r);
	FUNC3(r);
}
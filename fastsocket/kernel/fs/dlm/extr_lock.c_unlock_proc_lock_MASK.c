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
struct dlm_ls {int dummy; } ;
struct dlm_lkb {int /*<<< orphan*/  lkb_ua; } ;
struct dlm_args {int dummy; } ;

/* Variables and functions */
 int DLM_EUNLOCK ; 
 int /*<<< orphan*/  DLM_LKF_FORCEUNLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dlm_args*) ; 
 int FUNC1 (struct dlm_ls*,struct dlm_lkb*,struct dlm_args*) ; 

__attribute__((used)) static int FUNC2(struct dlm_ls *ls, struct dlm_lkb *lkb)
{
	struct dlm_args args;
	int error;

	FUNC0(DLM_LKF_FORCEUNLOCK, lkb->lkb_ua, &args);

	error = FUNC1(ls, lkb, &args);
	if (error == -DLM_EUNLOCK)
		error = 0;
	return error;
}
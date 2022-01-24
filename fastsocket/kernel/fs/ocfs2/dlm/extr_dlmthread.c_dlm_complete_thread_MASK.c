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
struct dlm_ctxt {int /*<<< orphan*/ * dlm_thread_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  ML_KTHREAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

void FUNC2(struct dlm_ctxt *dlm)
{
	if (dlm->dlm_thread_task) {
		FUNC1(ML_KTHREAD, "waiting for dlm thread to exit\n");
		FUNC0(dlm->dlm_thread_task);
		dlm->dlm_thread_task = NULL;
	}
}
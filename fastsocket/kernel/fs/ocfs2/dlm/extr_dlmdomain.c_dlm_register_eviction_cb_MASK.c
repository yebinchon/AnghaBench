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
struct dlm_eviction_cb {int /*<<< orphan*/  ec_item; } ;
struct dlm_ctxt {int /*<<< orphan*/  dlm_eviction_callbacks; } ;

/* Variables and functions */
 int /*<<< orphan*/  dlm_callback_sem ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct dlm_ctxt *dlm,
			      struct dlm_eviction_cb *cb)
{
	FUNC0(&dlm_callback_sem);
	FUNC1(&cb->ec_item, &dlm->dlm_eviction_callbacks);
	FUNC2(&dlm_callback_sem);
}
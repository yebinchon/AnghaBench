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
struct dlm_message {int /*<<< orphan*/  m_type; } ;
struct dlm_ls {int /*<<< orphan*/  ls_waiters_mutex; struct dlm_message ls_stub_ms; } ;
struct dlm_lkb {TYPE_1__* lkb_resource; } ;
struct TYPE_2__ {struct dlm_ls* res_ls; } ;

/* Variables and functions */
 int FUNC0 (struct dlm_lkb*,int /*<<< orphan*/ ,struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct dlm_lkb *lkb, struct dlm_message *ms)
{
	struct dlm_ls *ls = lkb->lkb_resource->res_ls;
	int error;

	if (ms != &ls->ls_stub_ms)
		FUNC1(&ls->ls_waiters_mutex);
	error = FUNC0(lkb, ms->m_type, ms);
	if (ms != &ls->ls_stub_ms)
		FUNC2(&ls->ls_waiters_mutex);
	return error;
}
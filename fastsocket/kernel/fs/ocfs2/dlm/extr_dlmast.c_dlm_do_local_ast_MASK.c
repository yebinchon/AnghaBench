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
struct dlm_lockstatus {int dummy; } ;
struct dlm_lock_resource {int dummy; } ;
struct TYPE_2__ {scalar_t__ node; } ;
struct dlm_lock {int /*<<< orphan*/  astdata; TYPE_1__ ml; int /*<<< orphan*/  (* ast ) (int /*<<< orphan*/ ) ;struct dlm_lockstatus* lksb; } ;
struct dlm_ctxt {scalar_t__ node_num; } ;
typedef  int /*<<< orphan*/  (* dlm_astlockfunc_t ) (int /*<<< orphan*/ ) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_lock*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct dlm_ctxt *dlm, struct dlm_lock_resource *res,
		      struct dlm_lock *lock)
{
	dlm_astlockfunc_t *fn;
	struct dlm_lockstatus *lksb;

	FUNC2();

	lksb = lock->lksb;
	fn = &lock->ast;
	FUNC0(lock->ml.node != dlm->node_num);

	FUNC1(dlm, res, lock);
	(*fn)(lock->astdata);
}
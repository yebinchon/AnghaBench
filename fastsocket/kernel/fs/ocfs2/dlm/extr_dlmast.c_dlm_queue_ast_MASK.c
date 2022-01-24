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
struct dlm_lock {int dummy; } ;
struct dlm_ctxt {int /*<<< orphan*/  ast_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ctxt*,struct dlm_lock*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct dlm_ctxt *dlm, struct dlm_lock *lock)
{
	FUNC2();

	FUNC0(!dlm);
	FUNC0(!lock);

	FUNC3(&dlm->ast_lock);
	FUNC1(dlm, lock);
	FUNC4(&dlm->ast_lock);
}
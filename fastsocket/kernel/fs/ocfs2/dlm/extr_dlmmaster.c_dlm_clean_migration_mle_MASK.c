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
struct dlm_master_list_entry {int /*<<< orphan*/  wq; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  woken; } ;
struct dlm_ctxt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dlm_ctxt*,struct dlm_master_list_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ctxt*,struct dlm_master_list_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct dlm_ctxt *dlm,
				    struct dlm_master_list_entry *mle)
{
	FUNC0(dlm, mle);

	FUNC3(&mle->spinlock);
	FUNC1(dlm, mle);
	FUNC2(&mle->woken, 1);
	FUNC4(&mle->spinlock);

	FUNC5(&mle->wq);
}
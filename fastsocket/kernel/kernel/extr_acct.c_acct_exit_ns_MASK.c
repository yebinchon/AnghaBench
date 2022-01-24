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
struct pid_namespace {struct bsd_acct_struct* bacct; } ;
struct bsd_acct_struct {int /*<<< orphan*/ * file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bsd_acct_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  acct_lock ; 
 int /*<<< orphan*/  FUNC1 (struct bsd_acct_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct pid_namespace *ns)
{
	struct bsd_acct_struct *acct;

	FUNC2(&acct_lock);
	acct = ns->bacct;
	if (acct != NULL) {
		if (acct->file != NULL)
			FUNC0(acct, NULL, NULL);

		FUNC1(acct);
	}
	FUNC3(&acct_lock);
}
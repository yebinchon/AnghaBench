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
struct file {int dummy; } ;
struct bsd_acct_struct {struct file* file; } ;

/* Variables and functions */
 int /*<<< orphan*/  acct_lock ; 
 int /*<<< orphan*/  FUNC0 (struct bsd_acct_struct*,struct pid_namespace*,struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct pid_namespace *ns)
{
	struct file *file = NULL;
	struct bsd_acct_struct *acct;

	acct = ns->bacct;
	/*
	 * accelerate the common fastpath:
	 */
	if (!acct || !acct->file)
		return;

	FUNC3(&acct_lock);
	file = acct->file;
	if (FUNC5(!file)) {
		FUNC4(&acct_lock);
		return;
	}
	FUNC2(file);
	FUNC4(&acct_lock);

	FUNC0(acct, ns, file);
	FUNC1(file);
}
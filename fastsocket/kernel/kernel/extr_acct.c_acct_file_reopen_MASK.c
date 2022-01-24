#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pid_namespace {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  mnt; } ;
struct file {TYPE_1__ f_path; } ;
struct TYPE_6__ {scalar_t__ expires; } ;
struct bsd_acct_struct {int active; TYPE_2__ timer; int /*<<< orphan*/  list; scalar_t__ needcheck; struct pid_namespace* ns; struct file* file; } ;

/* Variables and functions */
 int ACCT_TIMEOUT ; 
 int HZ ; 
 int /*<<< orphan*/  acct_list ; 
 int /*<<< orphan*/  acct_lock ; 
 int /*<<< orphan*/  acct_timeout ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct bsd_acct_struct*,struct pid_namespace*,struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct bsd_acct_struct *acct, struct file *file,
		struct pid_namespace *ns)
{
	struct file *old_acct = NULL;
	struct pid_namespace *old_ns = NULL;

	if (acct->file) {
		old_acct = acct->file;
		old_ns = acct->ns;
		FUNC1(&acct->timer);
		acct->active = 0;
		acct->needcheck = 0;
		acct->file = NULL;
		acct->ns = NULL;
		FUNC5(&acct->list);
	}
	if (file) {
		acct->file = file;
		acct->ns = ns;
		acct->needcheck = 0;
		acct->active = 1;
		FUNC4(&acct->list, &acct_list);
		/* It's been deleted if it was used before so this is safe */
		FUNC7(&acct->timer, acct_timeout, (unsigned long)acct);
		acct->timer.expires = jiffies + ACCT_TIMEOUT*HZ;
		FUNC0(&acct->timer);
	}
	if (old_acct) {
		FUNC6(old_acct->f_path.mnt);
		FUNC9(&acct_lock);
		FUNC2(acct, old_ns, old_acct);
		FUNC3(old_acct, NULL);
		FUNC8(&acct_lock);
	}
}
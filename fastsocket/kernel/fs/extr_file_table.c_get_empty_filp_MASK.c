#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  fu_list; } ;
struct file {int /*<<< orphan*/  f_lock; int /*<<< orphan*/  f_cred; TYPE_2__ f_owner; int /*<<< orphan*/  f_count; TYPE_1__ f_u; } ;
struct cred {int dummy; } ;
struct TYPE_6__ {long max_files; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct cred* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct file*) ; 
 int /*<<< orphan*/  FUNC5 (struct file*) ; 
 TYPE_3__ files_stat ; 
 int /*<<< orphan*/  filp_cachep ; 
 int /*<<< orphan*/  FUNC6 (struct cred const*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 long FUNC8 () ; 
 struct file* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nr_files ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (struct file*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

struct file *FUNC16(void)
{
	const struct cred *cred = FUNC3();
	static long old_max;
	struct file * f;

	/*
	 * Privileged users can go above max_files
	 */
	if (FUNC8() >= files_stat.max_files && !FUNC2(CAP_SYS_ADMIN)) {
		/*
		 * percpu_counters are inaccurate.  Do an expensive check before
		 * we go and fail.
		 */
		if (FUNC11(&nr_files) >= files_stat.max_files)
			goto over;
	}

	f = FUNC9(filp_cachep, GFP_KERNEL);
	if (f == NULL)
		goto fail;

	FUNC10(&nr_files);
	if (FUNC14(f))
		goto fail_sec;

	FUNC0(&f->f_u.fu_list);
	FUNC1(&f->f_count, 1);
	FUNC13(&f->f_owner.lock);
	f->f_cred = FUNC6(cred);
	FUNC15(&f->f_lock);
	FUNC4(f);
	/* f->f_version: 0 */
	return f;

over:
	/* Ran out of filps - report that */
	if (FUNC8() > old_max) {
		FUNC12("VFS: file-max limit %lu reached\n", FUNC7());
		old_max = FUNC8();
	}
	goto fail;

fail_sec:
	FUNC5(f);
fail:
	return NULL;
}
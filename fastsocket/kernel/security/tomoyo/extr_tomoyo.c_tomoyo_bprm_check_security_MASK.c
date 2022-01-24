#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tomoyo_domain_info {int dummy; } ;
struct linux_binprm {TYPE_2__* file; TYPE_1__* cred; } ;
struct TYPE_4__ {int /*<<< orphan*/  f_path; } ;
struct TYPE_3__ {struct tomoyo_domain_info* security; } ;

/* Variables and functions */
 int FUNC0 (struct tomoyo_domain_info*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct linux_binprm*) ; 

__attribute__((used)) static int FUNC2(struct linux_binprm *bprm)
{
	struct tomoyo_domain_info *domain = bprm->cred->security;

	/*
	 * Execute permission is checked against pathname passed to do_execve()
	 * using current domain.
	 */
	if (!domain)
		return FUNC1(bprm);
	/*
	 * Read permission is checked against interpreters using next domain.
	 * '1' is the result of open_to_namei_flags(O_RDONLY).
	 */
	return FUNC0(domain, &bprm->file->f_path, 1);
}
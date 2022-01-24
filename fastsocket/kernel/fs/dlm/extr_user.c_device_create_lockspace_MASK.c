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
struct dlm_lspace_params {int /*<<< orphan*/  name; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int minor; } ;
struct dlm_ls {TYPE_1__ ls_device; } ;
typedef  int /*<<< orphan*/  dlm_lockspace_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  DLM_USER_LVB_LEN ; 
 int ENOENT ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct dlm_ls*,int /*<<< orphan*/ ) ; 
 struct dlm_ls* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct dlm_lspace_params *params)
{
	dlm_lockspace_t *lockspace;
	struct dlm_ls *ls;
	int error;

	if (!FUNC0(CAP_SYS_ADMIN))
		return -EPERM;

	error = FUNC3(params->name, FUNC6(params->name),
				  &lockspace, params->flags, DLM_USER_LVB_LEN);
	if (error)
		return error;

	ls = FUNC2(lockspace);
	if (!ls)
		return -ENOENT;

	error = FUNC1(ls, params->name);
	FUNC4(ls);

	if (error)
		FUNC5(lockspace, 0);
	else
		error = ls->ls_device.minor;

	return error;
}
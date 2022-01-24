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
typedef  int uint32_t ;
struct dlm_ls {scalar_t__ ls_low_nodeid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ls*,int) ; 
 int FUNC2 (struct dlm_ls*,int) ; 
 int FUNC3 (struct dlm_ls*,int) ; 

__attribute__((used)) static int FUNC4(struct dlm_ls *ls, uint32_t status)
{
	uint32_t status_all = status << 1;
	int error;

	if (ls->ls_low_nodeid == FUNC0()) {
		error = FUNC2(ls, status);
		if (!error)
			FUNC1(ls, status_all);
	} else
		error = FUNC3(ls, status_all);

	return error;
}
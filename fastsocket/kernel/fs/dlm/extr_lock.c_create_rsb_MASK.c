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
struct dlm_rsb {int res_length; int /*<<< orphan*/  res_recover_list; int /*<<< orphan*/  res_root_list; int /*<<< orphan*/  res_waitqueue; int /*<<< orphan*/  res_convertqueue; int /*<<< orphan*/  res_grantqueue; int /*<<< orphan*/  res_lookup; int /*<<< orphan*/  res_mutex; int /*<<< orphan*/  res_name; struct dlm_ls* res_ls; } ;
struct dlm_ls {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct dlm_rsb* FUNC1 (struct dlm_ls*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dlm_rsb *FUNC4(struct dlm_ls *ls, char *name, int len)
{
	struct dlm_rsb *r;

	r = FUNC1(ls, len);
	if (!r)
		return NULL;

	r->res_ls = ls;
	r->res_length = len;
	FUNC2(r->res_name, name, len);
	FUNC3(&r->res_mutex);

	FUNC0(&r->res_lookup);
	FUNC0(&r->res_grantqueue);
	FUNC0(&r->res_convertqueue);
	FUNC0(&r->res_waitqueue);
	FUNC0(&r->res_root_list);
	FUNC0(&r->res_recover_list);

	return r;
}
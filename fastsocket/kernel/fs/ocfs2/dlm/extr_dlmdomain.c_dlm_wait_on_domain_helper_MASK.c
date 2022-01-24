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
struct dlm_ctxt {scalar_t__ dlm_state; } ;

/* Variables and functions */
 scalar_t__ DLM_CTXT_JOINED ; 
 struct dlm_ctxt* FUNC0 (char const*) ; 
 int /*<<< orphan*/  dlm_domain_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(const char *domain)
{
	int ret = 0;
	struct dlm_ctxt *tmp = NULL;

	FUNC1(&dlm_domain_lock);

	tmp = FUNC0(domain);
	if (!tmp)
		ret = 1;
	else if (tmp->dlm_state == DLM_CTXT_JOINED)
		ret = 1;

	FUNC2(&dlm_domain_lock);
	return ret;
}